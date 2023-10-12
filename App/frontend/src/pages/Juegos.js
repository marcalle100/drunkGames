import styles from "./Juegos.module.css";
import { GameColector } from "../collectors/GameColector";
import { useNavigate } from "react-router-dom";

export const Juegos = () => {
  let navigate = useNavigate();
  //navega a la pantalla principal
  const returnLanding = () => {
    let pat = "/landing";
    navigate(pat);
  };

  return (
    <div className={styles.mainGamesContainer}>
      <p className={styles.sectionTitle}>Juegos para beber</p>
      <div className={styles.gameContainer}>
        {/* renderiza el componente game colector, encargado de recoger la informacion de las bases de datos y generar dinamicamente otros componentes */}
        <GameColector />
      </div>
      <div className={styles.buttonContainer}>
        <button className={styles.returnButton} onClick={returnLanding}>
          Volver
        </button>
      </div>
    </div>
  );
};
