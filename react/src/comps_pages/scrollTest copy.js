import React, { useEffect } from 'react'
import { useScrollEnd } from '../hooks/useScrollEnd'

const ScrollTest = () => {
  const {isEndScreen,endScreenFalse} = useScrollEnd();

  useEffect(() => {
    if(isEndScreen){
      alert("end screen")
    }
  },[isEndScreen])

  return (
    <div className='container'>
      <div style={{minHeight:"160vh"}} className='bg-info'>
        <h1>Info bg</h1>
      </div>
      <div className='bg-warning'>
        <h1>warning !</h1>
      </div>
    </div>
  )
}

export default ScrollTest