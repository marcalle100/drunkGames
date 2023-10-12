import React from "react";
import { DrinksColector } from "../collectors/DrinksColector";
import { useNavigate } from "react-router-dom";
import styles from "./Bebidas.module.css";

export const Bebidas = () => {
  let navigate = useNavigate();
  //navega a la pagina principal
  const returnLanding = () => {
    let pat = "/";
    navigate(pat);
  };
  return (
    <div className={styles.mainContainer}>
      <p className={styles.sectionTitle}>Combinados alcohólicos</p>
      <p className={styles.drinkList}>
        {/* renderiza el componente drinksColector */}
        <DrinksColector />
      </p>
      <p className={styles.buttonContainer}>
        <button onClick={returnLanding} className={styles.returnButton}>
          Volver
        </button>
      </p>
    </div>
  );
};
