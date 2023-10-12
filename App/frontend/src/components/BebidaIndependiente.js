import React, { useState } from "react";
import styles from "./BebidaIndependiente.module.css";

export const BebidaIndependiente = ({ id, nombre, ingredientes }) => {
  const [isMainContainer2, setIsMainContainer2] = useState(false);
  const [isHideDetails, setIsHideDetails] = useState(false);

  //crea dos estados que modifican el css para agrandar o encoger el contenedor
  // y a su vez para mostrar o ocultar los ingredientes
  const handleClick = () => {
    setIsMainContainer2((prevState) => !prevState);
    setIsHideDetails((prevState) => !prevState);
  };
  const containerStyle = isMainContainer2
    ? styles.mainContainer2
    : styles.mainContainer;
  const additionalContentStyle = isHideDetails
    ? styles.showDetails
    : styles.hideDetails;
  return (
    <div className={containerStyle} onClick={handleClick}>
      <p className={styles.drinkName}>{nombre}</p>
      <p className={additionalContentStyle}>{ingredientes}</p>
    </div>
  );
};
