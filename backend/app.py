from flask import Flask, jsonify, request
from flask_mysqldb import MySQL

app = Flask(__name__)

# MySQL configuration
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'seed'
app.config['MYSQL_HOST'] = 'localhost'

# Initialize MySQL
mysql = MySQL(app)


@app.after_request  # CORS configuration
def after_request(response):
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Headers'] = '*'
    return response


@app.route('/')  # ROOT
def index():
    return 'connected to flask'


@app.route('/slides') # Get All Data Slides
def slides():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM slides')
    result = cur.fetchall()

    result_list = []

    for row in result:
        result_list.append({
            'id': row[0],
            'url_image': row[1],
            'text': row[2],
        })

    return {
        'message': 'success',
        'data': result_list
    }


@app.route('/place') # Get All Data Place
def place():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM place')
    result = cur.fetchall()

    result_list = []

    for row in result:
        result_list.append({
            'id': row[0],
            'name': row[1],
            'regency': row[2],
            'url_image': row[3],
            'slug': row[7 + 1],
        })

    return {
        'message': 'success',
        'data': result_list
    }


@app.route('/place/<slug>') # Get Spesifik Data
def place_detail(slug):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM place WHERE slug = %s', [slug])
    result = cur.fetchone()

    # from review table where id_place = result[0]
    cur.execute('SELECT * FROM review WHERE id_place = %s', [result[0]])
    review_result = cur.fetchall()

    return {
        'message': 'success',
        'data': {
            'id': result[0],
            'name': result[1],
            'regency': result[2],
            'url_image': result[3],
            'description': result[4],
            'price': result[5],
            'schedule': result[6],
            'category': result[9 - 2],
            'slug': result[7 + 1],
            'reviews': [
                {
                    'id': review[0],
                    'creator': review[2],
                    'review': review[3],
                }
                for review in review_result
            ]
        }
    }


@app.route('/place/<slug>/review', methods=['POST']) # Post review to spesifik place
def create_review(slug):
    data = request.get_json()
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM place WHERE slug = %s', [slug])
    result = cur.fetchone()

    cur.execute('INSERT INTO review (id_place, creator, text) VALUES (%s, %s, %s)', [
                result[0], data['creator'], data['review']])
    mysql.connection.commit()

    return {"message": 'success'}


@app.route('/place', methods=['POST']) # Post data to place
def create_place():
    data = request.get_json()
    cur = mysql.connection.cursor()
    cur.execute('INSERT INTO place (name, regency, url_image, description, price, schedule, category, slug) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)', [
                data['name'], data['regency'], data['url_image'], data['description'], data['price'], data['schedule'], data['category'], data['slug']])
    mysql.connection.commit()

    return {"message": 'success'}


if __name__ == '__main__':
    app.run(debug=True)
