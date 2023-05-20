import {Form, redirect} from 'react-router-dom';

export async function ActionReview({request, params}) {
  const formData = await request.formData();
  const updates = Object.fromEntries(formData);

  const apiRes = await fetch(
    `http://localhost:5000/place/${params.slug}/review`,
    {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(updates),
    },
  );

  if (!apiRes.ok) {
    throw new Error('Could not submit review');
  }

  return redirect(`/place/${params.slug}`);
}

function InputReview(x) {
  const {refetch} = x;

  const handleRefetch = () => {
    setTimeout(() => {
      document.getElementById('name').value = '';
      document.getElementById('message').value = '';
      refetch();
    }, 1000);
  };

  return (
    <section className='bg-gray-100'>
      <div className='mx-auto max-w-screen-xl px-4 py-16 sm:px-6 lg:px-8'>
        <div className='grid grid-cols-1 gap-x-16 gap-y-8 lg:grid-cols-5'>
          <div className='lg:col-span-2 lg:py-12'>
            <p className='max-w-xl text-lg'>
              Berikan komentar dan review anda tentang destinasi wisata ini. Atau ceritakan pengalaman terbaik anda selama mengunjungi destinasi wisata ini.
            </p>

            <div className='mt-8'>
              <a href='' className='text-2xl font-bold text-pink-600'>
                JATIM VIBE
              </a>

              <address className='mt-2 not-italic'>Tulis Ulasan Anda... </address>
            </div>
          </div>

          <div className='rounded-lg bg-white p-8 shadow-lg lg:col-span-3 lg:p-12'>
            <Form method='post' className='space-y-4'>
              <div>
                <label className='sr-only' htmlFor='name'>
                  Name
                </label>
                <input
                  className='w-full rounded-lg border-gray-200 p-3 text-sm'
                  placeholder='Name'
                  type='text'
                  id='name'
                  name='creator'
                />
              </div>

              <div>
                <label className='sr-only' htmlFor='message'>
                  Message
                </label>

                <textarea
                  className='w-full rounded-lg border-gray-200 p-3 text-sm'
                  placeholder='Message'
                  rows='8'
                  id='message'
                  name='review'
                ></textarea>
              </div>

              <div className='mt-4'>
                <button
                  type='submit'
                  className='inline-block w-full rounded-lg bg-black px-5 py-3 font-medium text-white sm:w-auto'
                  onClick={handleRefetch}
                >
                  Review This Place
                </button>
              </div>
            </Form>
          </div>
        </div>
      </div>
    </section>
  );
}

export default InputReview;
