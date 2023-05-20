function Review(r) {
  const {data} = r;
  const review = data.data.reviews;
  return (
    <section>
      <div className='mx-auto max-w-screen-xl px-4 py-16 sm:px-6 lg:px-8'>
        <h3 className='text-start text-3xl font-bold tracking-tight sm:text-5xl mb-2'>
          Reviews from users
        </h3>
        <hr className='mb-11' />
        <div className='[column-fill:_balance] sm:columns-2 sm:gap-6 lg:columns-3 lg:gap-8'>
          {review.map(({creator, review}, index) => (
            <div key={index} className='mb-8 sm:break-inside-avoid'>
              <blockquote className='rounded-xl bg-gray-50 p-6 shadow'>
                <p className='leading-relaxed text-gray-700'>{review}</p>
              </blockquote>

              <div className='mt-4 flex items-center gap-4'>
                <div className='text-sm'>
                  <p className='font-medium'> • {creator}</p>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

export default Review;
