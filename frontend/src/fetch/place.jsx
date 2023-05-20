const fetchPlace = async () => {
  const apiRes = await fetch('http://localhost:5000/place');

  if (!apiRes.ok) {
    throw new Error('Could not fetch place');
  }

  return apiRes.json();
};

export default fetchPlace;
