import Logo from '../assets/logo';

function Header() {
  return (
    <nav id='header' className='w-full z-30 top-0 py-1'>
      <div className='w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-6 py-3'>
        <div
          className='order-3 md:order-1 flex md:items-center md:w-auto w-full'
          id='menu'
        ></div>
        <div className='order-1 md:order-2'>
          <a
            className='flex items-center tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl'
            href='/'
          >
            <Logo />
            JATIM VIBE
          </a>
        </div>
        <div
          className='order-2 md:order-3 flex items-center'
          id='nav-content'
        ></div>
      </div>
    </nav>
  );
}

export default Header;
