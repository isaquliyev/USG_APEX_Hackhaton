// Modal.js
import React from "react";
import ReactDOM from "react-dom";
import style from './modal.module.css'; // You'll need to define modal styles in a separate CSS module

const Modal = ({ onClose, data }) => {
  return ReactDOM.createPortal(
    <div className={style.overlay} onClick={onClose}>
      <div className={style.modal} onClick={(e) => e.stopPropagation()}>
        <button className={style.closeButton} onClick={onClose}>
          &times;
        </button>
        <div>
          {Object.keys(data).map((key) => (
            <p key={key}>
              <strong>{key}:</strong>
              {key === "image" ? (
                <img src={data[key]} alt={data.name} className={style.modalImage} />
              ) : (
                data[key]
              )}
            </p>
          ))}
        </div>
      </div>
    </div>,
    document.body
  );
};

export default Modal;
