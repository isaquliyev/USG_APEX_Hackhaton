import style from './../../table/table.module.css'
import data from './../../../../data/patient.json'
import Table from '../../table/Table';

const Patients = () => {
  const headerData = ["Patient", "Name", "Address" , "Phone", "Syndrome", "Date & Time"]
  return (
    <div className={style.container}>
      <Table data={data} headerData={headerData} />
    </div>
  );
};

export default Patients;