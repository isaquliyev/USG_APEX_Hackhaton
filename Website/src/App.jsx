import { Route, Routes } from 'react-router-dom'
import './style.css'
import DoctorDashboard from './components/doctorDashboard/pages/DoctorDashboard'
import Patients from './components/doctorDashboard/pages/patients/Patients'

const App = () => {
  return (
    <>
      <DoctorDashboard />
      {/* <Routes>
        <Route path="/doctordashboard" element={<DoctorDashboard />} />
        <Route path="/doctordashboard/patients" element={<Patients />} />
      </Routes> */}
    </>
  )
}

export default App
