function Detail(x) {
  const {data} = x;
  const detail = data.data;
  return (
    <section>
      <div className='mx-auto max-w-screen-xl px-4 py-16 sm:px-6 sm:py-24 lg:px-8'>
        <div className='max-w-3xl'>
          <h2 className='text-3xl font-bold sm:text-4xl'>{detail.name}</h2>
          <p className='mt-4 text-gray-500'>{detail.regency}</p>
        </div>
        <div className='mt-8 grid grid-cols-1 gap-8 lg:grid-cols-2 lg:gap-16'>
          <div className='relative h-64 overflow-hidden sm:h-80 lg:h-full'>
            <img
              alt='Party'
              src={detail.url_image}
              className='absolute inset-0 h-full w-full object-cover'
            />
          </div>
          <div className='lg:py-16'>
            <article className='space-y-4 text-gray-600'>
              <p>{detail.description}</p>
              <div>
                <dt>
                  <b>Harga:</b>
                </dt>
                <dd>{detail.price}</dd>
              </div>
              <div>
                <dt>
                  <b>Jadwal:</b>
                </dt>
                <dd>{detail.schedule}</dd>
              </div>
              <div>
                <dt>
                  <b>Kategori:</b>
                </dt>
                <dd>{detail.category}</dd>
              </div>
            </article>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Detail;
