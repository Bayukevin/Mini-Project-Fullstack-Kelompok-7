import {useQuery} from '@tanstack/react-query';
import Header from '../components/Header';
import {useLoaderData} from 'react-router-dom';
import fetchPlaceSlug from '../fetch/placeSlug';
import Detail from '../components/Detail';
import InputReview from '../components/InputReview';
import Review from '../components/Review';

export async function LoaderPlace({params}) {
  return {slug: params.slug};
}

function Place() {
  const {slug} = useLoaderData();
  const {data, refetch} = useQuery(['slug', slug], fetchPlaceSlug);

  return (
    <div className='bg-white text-gray-600 work-sans leading-normal text-base tracking-normal'>
      <Header />

      <Detail data={data} />

      <Review data={data} />

      <InputReview refetch={refetch} />
    </div>
  );
}

export default Place;
