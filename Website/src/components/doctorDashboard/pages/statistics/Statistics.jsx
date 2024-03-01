import style from './statistics.module.css'
import { BsPersonCheckFill , BsFillPersonLinesFill , BsStopwatchFill  } from "react-icons/bs";

const Statistics = () => {
  return (
    <div className={style.container}>
        <div className={style.statistic_cards}>
            <div className={style.statistic_card}>
                <div className={style.card_icon}>
                    <BsPersonCheckFill />
                </div>
                <div className={style.card_info}>
                    <div className={style.card_title}>Total Patient</div>
                    <div className={style.card_stat}>2000+</div>
                    <div className={style.card_date}>Till Today</div>
                </div>
            </div>
            <div className={style.statistic_card}>
                <div className={style.card_icon}>
                    <BsFillPersonLinesFill />
                </div>
                <div className={style.card_info}>
                    <div className={style.card_title}>Today Patient</div>
                    <div className={style.card_stat}>068</div>
                    <div className={style.card_date}>1 March-2024</div>
                </div>
            </div>
            <div className={style.statistic_card}>
                <div className={style.card_icon}>
                    <BsStopwatchFill  />
                </div>
                <div className={style.card_info}>
                    <div className={style.card_title}>Total Appointments</div>
                    <div className={style.card_stat}>085+</div>
                    <div className={style.card_date}>1 March-2024</div>
                </div>
            </div>
        </div>
    </div>
  )
}

export default Statistics