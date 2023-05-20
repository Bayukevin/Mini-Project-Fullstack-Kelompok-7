const fetchSlides = async () => {
  const apiRes = await fetch('http://localhost:5000/slides');

  if (!apiRes.ok) {
    throw new Error('Could not fetch slides');
  }

  return apiRes.json();
};

export default fetchSlides;
