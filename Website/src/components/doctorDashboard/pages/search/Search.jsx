import { GoMail } from "react-icons/go"
import { FaRegBell } from "react-icons/fa"
import { RiSearchLine } from "react-icons/ri"
import style from './search.module.css'

const Search = () => {
  return (
    <div className={style.container}>
      <h2 className={style.title}>Dashboard</h2>
      <div className={style.search_div}>
        <GoMail className={style.icon} />
        <FaRegBell className={style.icon} />
        <div>
          <RiSearchLine />
          <input type="text" placeholder="Search" />
        </div>
      </div>
    </div>  
  )
}

export default Search