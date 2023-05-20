import About from '../components/About';
import Catalog from '../components/Catalog';
import Footer from '../components/Footer';
import Header from '../components/Header';
import Slides from '../components/Slides';

function Home() {
  return (
    <div className='bg-white text-gray-600 work-sans leading-normal text-base tracking-normal'>
      <Header />
      <div
        className='carousel relative container mx-auto'
        style={{maxWidth: 1600}}
      >
        <Slides />
      </div>

      <Catalog />

      <About />

      <Footer />
    </div>
  );
}

export default Home;
