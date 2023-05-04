const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');

const connection = mysql.createConnection({
  host: "localhost",
  port: 3300,
  user: "root",
  password: "",
  database: "employees_db",
});

