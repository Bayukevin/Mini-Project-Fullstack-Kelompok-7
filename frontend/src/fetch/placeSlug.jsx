const fetchPlaceSlug = async ({queryKey}) => {
  const slug = queryKey[1];

  const apiRes = await fetch(`http://localhost:5000/place/${slug}`);

  if (!apiRes.ok) {
    throw new Error('Could not fetch place');
  }

  return apiRes.json();
};

export default fetchPlaceSlug;
