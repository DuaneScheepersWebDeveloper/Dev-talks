import mysql from "mysql";
//This is our DB settings for connecting to our MySQL database.
//There is no password

export const db = mysql.createConnection({
    host: 'localhost',
    user:"root",
    password:"",
    database: "dev-talks-db"
})