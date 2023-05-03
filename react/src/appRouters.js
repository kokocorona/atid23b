import React from 'react'
import { BrowserRouter,Routes,Route } from 'react-router-dom'
import Header from './comps_general/header'
import Home from './comps_pages/home'
import Page404 from './comps_pages/page404'
import ScrollTest from './comps_pages/scrollTest'

export default function AppRouters() {
  return (
    <BrowserRouter>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/scroll-test" element={<ScrollTest />} />
        <Route path="/*" element={<Page404 />} />
      </Routes>
    </BrowserRouter>
  )
}
