
import style from './patients.module.css'
import Statistics from './statistics/Statistics'

const Patients = () => {
  return (
    <div className={style.container}>
      <Statistics />
    </div>
  )
}

export default Patients