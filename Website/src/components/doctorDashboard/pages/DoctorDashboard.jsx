import { useState } from "react"
import style from './doctorDashboard.module.css'
import Patients from './patients/Patients.jsx'
import Medicines from './medicines/Medicines.jsx'
import Search from './search/Search.jsx'
import Sidebar from './sidebar/Sidebar.jsx'
import Statistics from './statistics/Statistics.jsx'
import Diseases from "./diseases/Diseases.jsx"

const DoctorDashboard = () => {
  const [router, setRouter] = useState('')
  
  return (
    <div className={style.container}>
      <Sidebar rooter={router} setRouter={setRouter} />
      <div className={style.right_content}>
        <Search />
        <Statistics />
        <div className={style.scrolled_content}>
          {
              router === 'patients' ? <Patients /> : 
              router === 'medicines' ? <Medicines /> : 
              router === 'diseases' ? <Diseases /> : <Patients />
          }
        </div>
      </div>
    </div>
  )
}

export default DoctorDashboard