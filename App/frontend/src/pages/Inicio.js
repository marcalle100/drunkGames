import React from "react";
import { useNavigate } from "react-router-dom";
import styles from "./Inicio.module.css";
import martini from "../assets/martini.png";
import games from "../assets/games.png";

export const Inicio = () => {
  let navigate = useNavigate();
  //Navega a la ruta /drinks, que esta asociada al componente bebidas
  const drinksNavigation = () => {
    let pat = "/drinks";
    navigate(pat);
  };
  //Navega a la ruta /games, que esta asociada al componente Juegos
  const gamesNavigation = () => {
    let pat = "/games";
    navigate(pat);
  };
  return (
    <div className={styles.mainContainer}>
      <div className={styles.drinksTab} onClick={drinksNavigation}>
        <p className={styles.titles}>Combinaciones alcohólicas</p>
        <img src={martini} alt="bebidas" className={styles.mainImage} />
      </div>
      <div className={styles.gamesTab} onClick={gamesNavigation}>
        <p className={styles.titles}>Juegos para beber</p>
        <img src={games} alt="juegos" className={styles.mainImage} />
      </div>
    </div>
  );
};
