import React from 'react'
import style from './doctorDashboard.module.css'
import Sidebar from './sidebar/Sidebar.jsx'

const DoctorDashboard = () => {
  return (
    <div className={style.container}>
      <Sidebar />
    </div>
  )
}

export default DoctorDashboard