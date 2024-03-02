import style from './../patients/patients.module.css'
import data from '../../../../data/medicine.json'

const Medicines = () => {
  return (
    <div className={style.container}>
      <table className={style.table}>
        <thead>
          <tr className={style.header}>
            <td className={style.cell }>Name</td>
            <td className={style.cell}>NCD code</td>
            <td className={style.cell}>Description</td>
            <td className={style.cell}>Quantity</td>
          </tr>
        </thead>
        <tbody>
          {data.map((row, index) => (
            <tr key={index} className={style.row}>
              <td className={style.cell}>{row.name}</td>
              <td className={style.cell}>{row.ncdCode}</td>
              <td className={style.cell}>{row.description}</td>
              <td className={style.cell}>{row.ingredients[0].quantity}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Medicines;