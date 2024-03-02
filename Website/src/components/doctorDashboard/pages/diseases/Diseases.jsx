import style from './../patients/patients.module.css'
import data from '../../../../data/disease.json'

const Diseases = () => {
  return (
    <div className={style.container}>
      <table className={style.table}>
        <thead>
          <tr className={style.header}>
            <td className={style.cell }>Name</td>
            <td className={style.cell}>ICD</td>
            <td className={style.cell}>Description</td>
          </tr>
        </thead>
        <tbody>
          {data.map((row, index) => (
            <tr key={index} className={style.row}>
              <td className={style.cell}>{row.name}</td>
              <td className={style.cell}>{row.ICDCode}</td>
              <td className={style.cell}>{row.description}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Diseases;