import React from "react";
import styles from "./Tiles.module.css";
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
import { useNavigate } from "react-router-dom";

export const Tiles = ({
  id,
  nombre,
  descripcion,
  numero_min_jugadores,
  numero_max_jugadores,
  imagen,
  utiles,
}) => {
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
  let navigate = useNavigate();
  //navega a la url de detalles de juego, pasandole por la url toda la informacion necesaria en forma de parametros
  const gameDetails = () => {
    let pat = `/gamedetails?id=${id}&nombre=${nombre}&descripcion=${descripcion}&numero_min_jugadores=${numero_min_jugadores}&numero_max_jugadores=${numero_max_jugadores}&imagen=${imagen}&utiles=${utiles}`;
    navigate(pat);
  };
  return (
    <div className={styles.container} onClick={gameDetails}>
      <p className={styles.gameName}>{nombre}</p>
      <img src={imgDisplay} className={styles.tileIcon} alt="icono de juego" />
    </div>
  );
};
