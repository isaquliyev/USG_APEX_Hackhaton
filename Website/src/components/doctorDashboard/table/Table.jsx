import React, { useState } from "react";
import style from './table.module.css'

const Table = ({ data, headerData }) => {
  return (
    <table className={style.table}>
      <thead>
        <tr className={style.header}>
          {headerData.map((header) => (
            <td key={header} className={style.cell}>
              {header}
            </td>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, index) => (
          <tr key={index} className={style.row}>
            {Object.keys(row).map((key) => (
              <td key={key} className={style.cell}>
                {key === "patient-img" ? (
                  <img src={row[key]} alt={row.name} />
                ) : (
                  row[key]
                )}
              </td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default Table;