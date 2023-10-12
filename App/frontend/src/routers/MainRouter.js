import React from "react";
import { Routes, Route, BrowserRouter, Navigate } from "react-router-dom";
import { Inicio } from "../pages/Inicio";
import { Bebidas } from "../pages/Bebidas";
import { Juegos } from "../pages/Juegos";
import { DetallesDeJuego } from "../pages/DetallesDeJuego";
export const MainRouter = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Navigate to="/landing" />} />
        <Route path="/landing" element={<Inicio />} />
        <Route path="/games" element={<Juegos />} />
        <Route path="/drinks" element={<Bebidas />} />
        <Route path="/gamedetails" element={<DetallesDeJuego />} />
      </Routes>
    </BrowserRouter>
  );
};
