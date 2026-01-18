const express = require("express");
const mysql = require("mysql2");
const path = require("path");

const app = express();
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

// --- configure your DB here ---
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "seriyye123",     // <-- set your MySQL password if any
  database: "blogapp2" // <-- use your database name (blogapp2)
});

db.connect(err => {
  if (err) {
    console.error("MySQL connection error:", err.message);
  } else {
    console.log("MySQL connected!");
  }
});

// Home - all products
app.get("/", (req, res) => {
  db.query("SELECT * FROM new_table", (err, rows) => {
    if (err) {
      console.log("DB error:", err);
      return res.status(500).send("DB error: " + err.message);
    }
    res.render("home", { title: "Home", products: rows });
  });
});

// About
app.get("/about", (req, res) => {
  res.render("about", { title: "About" });
});

// Shoes (Shoes = 1)
app.get("/Shoes", (req, res) => {
  db.query("SELECT * FROM new_table WHERE Shoes = 1", (err, rows) => {
    if (err) {
      console.log("DB error:", err);
      return res.status(500).send("DB error: " + err.message);
    }
    res.render("Shoes", { title: "Shoes", products: rows });
  });
});

// Bags (Bags = 1)
app.get("/Bags", (req, res) => {
  db.query("SELECT * FROM new_table WHERE Bags = 1", (err, rows) => {
    if (err) {
      console.log("DB error:", err);
      return res.status(500).send("DB error: " + err.message);
    }
    res.render("Bags", { title: "Bags", products: rows });
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on http://localhost:${PORT}`));