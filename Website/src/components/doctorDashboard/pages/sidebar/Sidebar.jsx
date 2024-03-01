import { GiMedicines } from "react-icons/gi"
import { MdOutlineSick } from "react-icons/md"
import { GoPeople } from "react-icons/go"
import { IoSettingsOutline } from "react-icons/io5"
import { IoIosLogOut } from "react-icons/io"
import React from 'react'
import style from './sidebar.module.css'
import doctorImg from './../../../../../public/assets/doctorimg.png'

const Sidebar = () => {
  return (
    <div className={style.container}>
        <img src={doctorImg} alt="Doctor Image" className={style.img} />
        <h1 className={style.name}>Dr. Amil Mamedov</h1>
        <hr className={style.underline} />
        <ul className={style.navbar}>
            <li>
                <GoPeople className={style.icon} />
                <span className={style.navLink}>Patients</span>
            </li>
            <li>
                <MdOutlineSick className={style.icon} />
                <span className={style.navLink}>Diseases</span>
            </li>
            <li>
                <GiMedicines className={style.icon} />
                <span className={style.navLink}>Medicines</span>
            </li>
            <li>
                <IoSettingsOutline className={style.icon} />
                <span className={style.navLink}>Settings</span>
            </li>
            <li>
                <IoIosLogOut className={style.icon} />
                <span className={style.navLink}>Logout</span>
            </li>
        </ul>
    </div>
  )
}

export default Sidebar