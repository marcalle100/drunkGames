const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const app = express();
app.use(cors());

const db = mysql.createConnection({
  //For testing purposes only
  host: "localhost",
  user: "root",
  password: "&@FLZEodV53e&x",
  database: "drunkgames",
});

app.get("/", (re, res) => {
  return res.json("From Backend Side");
});

app.get("/drunkgame", (req, res) => {
  const sql = "SELECT * FROM drunkwebpage";
  db.query(sql, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
});

app.listen(8081, () => {
  console.log("Listening");
});

// bebidas
const app2 = express();
app2.use(cors());

app2.get("/", (re, res) => {
  return res.json("From Backend Side");
});

app2.get("/drinks", (req, res) => {
  const sql = "SELECT * FROM bebidas";
  db.query(sql, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
});

app2.listen(8082, () => {
  console.log("Listening");
});
