import React from "react";
import { useEffect, useState } from "react";
import { Tiles } from "../components/Tiles";
import styles from "./GameColector.module.css";

export const GameColector = () => {
  const [data, setData] = useState([]);
  useEffect(() => {
    // recolecta la informacion json de la url pasada por la base de datos
    fetch("http://localhost:8081/drunkgame")
      .then((res) => res.json())
      .then((data) => setData(data))
      .catch((err) => console.log(err));
  }, []);
  return (
    <div className={styles.gridGeneration}>
      {/* por cada entrada del json, genera un componente tiles con esa misma informacion */}
      {data.map((d, i) => (
        <Tiles
          key={d.id}
          id={d.id}
          nombre={d.nombre}
          descripcion={d.descripcion}
          numero_min_jugadores={d.numero_min_jugadores}
          numero_max_jugadores={d.numero_max_jugadores}
          imagen={d.imagen}
          utiles={d.utiles}
        />
      ))}
    </div>
  );
};
