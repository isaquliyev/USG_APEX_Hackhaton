import React from 'react';
import style from './statistics.module.css';
import data from '../../../../../data/patient.json'

const Statistics = () => {
  return (
    <div className={style.container}>
      <table className={style.table}>
        <thead>
          <tr className={style.header}>
            <td className={style.cell }>Patient</td>
            <td className={style.cell}>Name</td>
            <td className={style.cell}>Address</td>
            <td className={style.cell}>Phone</td>
            <td className={style.cell}>Syndrome</td>
            <td className={style.cell}>Date & Time</td>
          </tr>
        </thead>
        <tbody>
          {data.map((row, index) => (
            <tr key={index} className={style.row}>
              <td className={style.cell}><img src={row['patient-img']} alt={row.name} /></td>
              <td className={style.cell}>{row.name}</td>
              <td className={style.cell}>{row.address}</td>
              <td className={style.cell}>{row.phone}</td>
              <td className={style.cell}>{row.syndrome}</td>
              <td className={style.cell}>{row.date}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Statistics;