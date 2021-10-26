const inquirer = require('inquirer');
const mysql = require('mysql2');






// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // MySQL password
      password: 'Password1234',
      database: 'classlist_db'  //---------------------------need to update
    },
    console.log(`Connected to the classlist_db database.`)
  );