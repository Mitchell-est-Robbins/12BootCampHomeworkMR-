const express = require('express');
const mysql = require('mysql2');
const inquirer = require('inquirer');
const consoleTable = require ('console.table');
// const hide = require ('hide-secrets'); 
//investigate asciiart.. or whatever it was called

// const PORT = process.env.PORT || 3001;
// const app = express();


//from class 
// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // MySQL password
      password: 'Password1234',
      database: 'merc_db'  //---------------------------need to update
    },
    console.log(`Connected to the database.`)
);

//--------------------above is setup--------------------------



//console log a intro... everything is going on in the console
// inquirer prompts, list
// WHEN I start the application
// THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
const startMenu = async () => {
    const response = await inquirer.prompt([
        {
        type: "list",
        name: "choice",
        message: "ATTENTION THIS INFO IS CLASSIFIED",
        choices: [
            "VIEW ALL SECTIONS",
            "VIEW ALL ROLES",
            "VIEW ALL EMPLOYEES",
            "ADD SECTION",
            "ADD ROLE",
            "ADD EMPLOYEE",
            "UPDATE EMPLOYEE",
            "EXIT"
                ]
        }   
    ])

//inspired by working with Chuck, 
switch (response.choice) {
        case "VIEW ALL SECTIONS":
        showDepartment();
        break;

        case "VIEW ALL ROLES":
        showRole();
        break;

        case "VIEW ALL EMPLOYEES":
        showEmployees();
        break;

        case "ADD SECTION":
        plusDepartment();
        break;

        case "ADD ROLE":
        plusRole();
        break;

        case "ADD EMPLOYEE":
        plusEmployee();
        break;

        case "UPDATE EMPLOYEE":
        updateEmployee();
        break;
    }

};


// const xxx =async () => {
    // const xxx = await db.promise().query ()
    // console.table(xxx)
    //function for menu()
// }

// // departments,
// WHEN I choose to view all departments
// THEN I am presented with a formatted table showing department names and department ids

const showDepartment = async () => {
    const section= await db.promise().query("SELECT * FROM department")
    console.table(section[0]);
    startMenu()
};

// roles,
// /WHEN I choose to view all roles
// THEN I am presented with the job title, role id, the department that role belongs to,
//  and the salary for that role

const showRole = async () => {
    const section= await db.promise().query("SELECT * FROM roles")
    console.table(section[0]);
    startMenu()
};
// employees,
// WHEN I choose to view all employees
// THEN I am presented with a formatted table showing employee data,
//  including employee ids, first names, last names, job titles, departments, salaries,
//   and managers that the employees report to

const showEmployees = async () => {
    const section= await db.promise().query("SELECT * FROM employee")
    console.table(section[0]);
    startMenu()
};

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






startMenu()


//boiler plate for connection stuff.... may not be needed. 
// Default response for any other request (Not Found)

// app.use((req, res) => {
//     res.status(404).end();
//   });
  
//   app.listen(PORT, () => {
//     console.log(`Server running on port ${PORT}`);
//   });
  