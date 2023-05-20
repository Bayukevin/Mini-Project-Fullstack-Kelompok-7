function Footer() {
  return (
    <footer className='container mx-auto py-8 border-t border-gray-400'>
      <div className='container flex px-3 py-8 '>
        <div className='w-full mx-auto flex flex-wrap'>
          <div className='flex w-full lg:w-1/2 '>
            <div className='px-3 md:px-0'>
              <h3 className='font-bold text-gray-900'>About</h3>
              <p className='py-4'>
              Website kami menyediakan deskripsi rinci tentang setiap tempat wisata, memberikan gambaran lengkap tentang lokasi, atraksi utama, kegiatan yang dapat dilakukan, dan fasilitas yang tersedia. Kami juga menyajikan ulasan pengunjung yang bermanfaat dan saran perjalanan yang berguna untuk membantu Anda merencanakan perjalanan yang sesuai dengan preferensi dan minat Anda.
              </p>
            </div>
          </div>
          <div className='flex w-full lg:w-1/2 lg:justify-end lg:text-right'>
            <div className='px-3 md:px-0'>
              <h3 className='font-bold text-gray-900'>Mini Project Fullstack Developer</h3>
              <ul className='list-reset items-center pt-3'>
                <li>
                  <a
                    className='inline-block no-underline hover:text-black hover:underline py-1'
                    href='#'
                  >
                    Kelompok - 07
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}

export default Footer;
