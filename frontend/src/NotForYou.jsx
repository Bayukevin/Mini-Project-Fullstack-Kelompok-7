import {useRouteError} from 'react-router-dom';
import Logo from './assets/logo';

function NotForYou() {
  const error = useRouteError();

  return (
    <div className='flex h-[calc(100vh-80px)] items-center justify-center p-5 bg-white w-full'>
      <div className='text-center'>
        <div className='inline-flex rounded-full bg-yellow-100 p-4'>
          <div className='rounded-full stroke-yellow-600 bg-yellow-200 p-4'>
            <Logo />
          </div>
        </div>
        <h1 className='mt-5 text-[36px] font-bold text-slate-800 lg:text-[50px]'>
          404 - Page not found
        </h1>
        <p className='text-slate-600 mt-5 lg:text-lg'>
          {error.statusText || error.message}
        </p>
      </div>
    </div>
  );
}

export default NotForYou;
