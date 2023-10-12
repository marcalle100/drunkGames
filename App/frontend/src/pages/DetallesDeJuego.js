import React from "react";
import styles from "./DetallesDeJuego.module.css";
import { useLocation, useNavigate } from "react-router-dom";
import coin from "../assets/coin.png";
import chain from "../assets/chain.png";
import cupflip from "../assets/cupflip.png";
import devil from "../assets/devil.png";
import dice from "../assets/dice.png";
import drunkjack from "../assets/drunkjack.png";
import horserace from "../assets/horserace.png";
import jelly from "../assets/jelly.png";
import moreless from "../assets/moreless.png";
import spicy from "../assets/spicy.png";
import tictac from "../assets/tictac.png";
import titanic from "../assets/titanic.png";

export const DetallesDeJuego = () => {
  let navigate = useNavigate();
  //navega a la pagina anterior
  const returnGames = () => {
    let pat = "/games";
    navigate(pat);
  };
  //obtiene todos los parametros pasados anteriormente mediante url
  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);
  const id = queryParams.get("id");
  const nombre = queryParams.get("nombre");
  const descripcion = queryParams.get("descripcion");
  const numero_min_jugadores = queryParams.get("numero_min_jugadores");
  const numero_max_jugadores = queryParams.get("numero_max_jugadores");
  const imagen = queryParams.get("imagen");
  const utiles = queryParams.get("utiles");
  console.log({
    id,
    nombre,
    descripcion,
    numero_min_jugadores,
    numero_max_jugadores,
    imagen,
    utiles,
  });
  //obtiene el valor de imagen y setea la foto correspondiete a la variable imgDisplay

  let imgDisplay = null;
  switch (imagen) {
    case "coin":
      imgDisplay = coin;
      break;
    case "chain":
      imgDisplay = chain;
      break;
    case "cupflip":
      imgDisplay = cupflip;
      break;
    case "devil":
      imgDisplay = devil;
      break;
    case "dice":
      imgDisplay = dice;
      break;
    case "drunkjack":
      imgDisplay = drunkjack;
      break;
    case "horserace":
      imgDisplay = horserace;
      break;
    case "jelly":
      imgDisplay = jelly;
      break;
    case "moreless":
      imgDisplay = moreless;
      break;
    case "spicy":
      imgDisplay = spicy;
      break;
    case "tictac":
      imgDisplay = tictac;
      break;
    case "titanic":
      imgDisplay = titanic;
      break;
    default:
      imgDisplay = null;
  }

  return (
    <div className={styles.mainContainer}>
      <div className={styles.gameContainer}>
        <p className={styles.gameTitle}>{nombre}</p>
        <img src={imgDisplay} alt="Icono" className={styles.gameIcon} />
      </div>
      <div className={styles.gameInfo}>
        <p>Número de jugadores mínimos: {numero_min_jugadores}</p>
        <p>Número de jugadores máximos: {numero_max_jugadores}</p>
        <p>Materiales necesarios: {utiles}</p>
      </div>
      <div className={styles.gameContainer}>
        <p className={styles.ruleTitle}>Como jugar</p>
        <p className={styles.gameDescription}>{descripcion}</p>
        <button onClick={returnGames} className={styles.returnButton}>
          Volver
        </button>
      </div>
    </div>
  );
};
