import style from './../../table/table.module.css'
import data from '../../../../data/disease.json'
import Table from '../../table/Table';

const Diseases = () => {
  const headerData = ["Name", "ICD", "Description"]

  return (
    <div className={style.container}>
      <Table headerData={headerData} data={data} />
    </div>
  );
};

export default Diseases;