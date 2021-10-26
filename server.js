const inquirer = require('inquirer');
const mysql = require('mysql2');
const consoleTable = require ('console.table');
const hide = require ('hide-secrets');
const express = require('express');
//investigate asciiart.. or whatever it was called

const PORT = process.env.PORT || 3001;
const app = express();


//from class 
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
    console.log(`Connected to the database.`)
);

//--------------------above is setup--------------------------


//console log a intro... everything is going on in the console
// inquirer prompts, list

// if statements for the answers 

// consts with async and awaits...
// select all,

// // departments,
// WHEN I choose to view all departments
// THEN I am presented with a formatted table showing department names and department ids

// roles,
// /WHEN I choose to view all roles
// THEN I am presented with the job title, role id, the department that role belongs to,
//  and the salary for that role

// employees,
// WHEN I choose to view all employees
// THEN I am presented with a formatted table showing employee data,
//  including employee ids, first names, last names, job titles, departments, salaries,
//   and managers that the employees report to


//each one of these will be a prompt string-------------------------------------
// add departments
// WHEN I choose to add a department
// THEN I am prompted to enter the name of the department and that department is added to the database

// add roles,
// WHEN I choose to add a role
// THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database

// add employees
// WHEN I choose to add an employee
// THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database

//update an existing employee
// WHEN I choose to update an employee role
// THEN I am prompted to select an employee to update and their new role and this information is updated in the database 






// const xxx =async () => {
    // const xxx = await db.promise().query ()
    // console.table(xxx)
    //function for menu()
// }



//boiler plate for connection stuff.... may not be needed. 
// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
  });
  
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
  