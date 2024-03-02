import React, { useState } from "react";
import style from './table.module.css';
import Modal from "../modal/Modal";

const Table = ({ data, headerData }) => {
  const [selectedRow, setSelectedRow] = useState(null);

  const handleCellClick = (rowIndex) => {
    setSelectedRow(data[rowIndex]);
  };

  const handleCloseModal = () => {
    setSelectedRow(null);
  };

  return (
    <div>
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
            <tr
              key={index}
              className={style.row}
              onClick={() => handleCellClick(index)}
            >
              {Object.keys(row).map((key) => (
                <td key={key} className={style.cell}>
                  {key === "image" ? (
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

      {selectedRow !== null && (
        <Modal onClose={handleCloseModal} data={selectedRow} />
      )}
    </div>
  );
};

export default Table;
