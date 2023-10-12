import React from "react";
import { useEffect, useState } from "react";
import { BebidaIndependiente } from "../components/BebidaIndependiente";

export const DrinksColector = () => {
  const [data, setData] = useState([]);
  // recolecta la informacion json de la url pasada por la base de datos
  useEffect(() => {
    fetch("http://localhost:8082/drinks")
      .then((res) => res.json())
      .then((data) => setData(data))
      .catch((err) => console.log(err));
  }, []);
  console.log("conection working");
  return (
    <div className="App">
      {/* por cada entrada del json, genera un componente BebidaIndependiente con esa misma informacion */}
      {data.map((d, i) => (
        <BebidaIndependiente
          key={d.id}
          id={d.id}
          nombre={d.nombre}
          ingredientes={d.ingredientes}
        />
      ))}
    </div>
  );
};
