import {QueryClient, QueryClientProvider} from '@tanstack/react-query';
import {createBrowserRouter, RouterProvider} from 'react-router-dom';
import {Suspense} from 'react';
import Logo from './assets/logo';
import Home from './pages/Home';
import NotForYou from './NotForYou';
import Place, {LoaderPlace} from './pages/Place';
import {ActionReview} from './components/InputReview';

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: Infinity,
      cacheTime: Infinity,
      suspense: true,
    },
  },
});

const router = createBrowserRouter([
  {
    path: '/',
    element: <Home />,
    errorElement: <NotForYou />,
  },
  {
    path: '/place/:slug',
    element: <Place />,
    errorElement: <NotForYou />,
    loader: LoaderPlace,
    action: ActionReview,
  },
]);

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <Suspense
        fallback={
          <div className='loading-pane'>
            <h2 className='loader'>
              <Logo />
            </h2>
          </div>
        }
      >
        <RouterProvider router={router} />
      </Suspense>
    </QueryClientProvider>
  );
}

export default App;
