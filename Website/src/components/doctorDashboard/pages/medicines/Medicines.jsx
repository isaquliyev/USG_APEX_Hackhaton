import style from './../../table/table.module.css'
import data from '../../../../data/medicine.json'
import Table from '../../table/Table';

const Medicines = () => {
  const headerData = ["Name", "NCD code", "Description", "Ingredients" ,"Quantity"] 
  const formattedData = data.map((medicine) => ({
    name: medicine.name,
    ncdCode: medicine.ncdCode,
    description: medicine.description,
    ingredients: medicine.ingredients[0].name,
    quantity: medicine.ingredients[0].quantity
  }));

  return (
    <div className={style.container}>
      <Table headerData={headerData} data={formattedData} />
    </div>
  );
};

export default Medicines;