import React, { useEffect, useState } from 'react'
import axios from 'axios';
import { useScrollEnd } from '../hooks/useScrollEnd'

const ScrollTest = () => {
  const {isEndScreen,endScreenFalse} = useScrollEnd();
  const [skip,setSkip] = useState(0);
  const [loading,setLoading] = useState(false);
  const [ar,setAr] = useState([]);
  

  useEffect(() => {
    if(isEndScreen){
      // alert("end screen")
      doApi();
    }
  },[isEndScreen])

  const doApi = async() => {
    setLoading(true);
    const url = `https://api.fda.gov/food/enforcement.json?limit=10&skip=${skip}`;
    const resp = await axios.get(url);
    console.log(resp.data);
    // setAr(resp.data.results);
    setAr([...ar,...resp.data.results]);
    endScreenFalse();
    setSkip(skip+10);
    setLoading(false);
  }

  return (
    <div className='container'>
      <div style={{minHeight:"160vh"}} className='bg-info p-3'>
        <h1>F.D.A Recall data</h1>
        <div className="row">
          {ar.map((item,i) => {
            return (
              <div key={i} className='col-md-7 p-4 my-4 border'>
                <h2>{item.city}</h2>
                <h3>{item.recalling_firm}</h3>
              </div>
            )
          })}
        </div>
        {loading && <h2 className='bg-warning'>Loading...</h2>}
      </div>
    
    </div>
  )
}

export default ScrollTest