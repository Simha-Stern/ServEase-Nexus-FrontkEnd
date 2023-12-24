import { useState } from 'react';

function HelloWorld(): JSX.Element {
  const [data, setData] = useState<string>('m');


    const fetchData = async () => {
      try {
        const response = await fetch('http://localhost:8200/');
        console.log(response);
        const result = await response.text();
        console.log(result);
        setData(result);
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

  return (
    <>
    <button onClick={fetchData}>try me...</button>
      <p>{data}</p>
    </>
  );
}

export default HelloWorld;
