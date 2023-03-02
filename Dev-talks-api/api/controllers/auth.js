import { db } from "../config/db.js";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";

//---------------------------------------
//This is our authentication controller that allows functionality to be able 
//to log in and log out of our application.
//our routes calls this file
//---------------------------------------
//REGISTER. 

export const register = (req, res) => {
  const q = "SELECT * FROM user WHERE email = ? OR userName =?";
    //includes your username, password and email address in your user table on our db
  db.query(q, [req.body.email, req.body.name], (err, data) => {
    if (err) return res.json(err);
    if (data.length) return res.status(409).json("User already exists");

    //encryption
    // bcrypt is hashing library that hashes a password before its pushed to 
    // our mySQL database
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(req.body.password, salt);

    const q = "INSERT INTO user(`userName`,`email`,`password`) VALUES(?)";
    const values = [
        req.body.userName,
        req.body.email,
        hash,
    ]
    db.query(q,[values],(err,data)=>{
       if(err) return res.json(err); 
       return res.status(200).json("User has been created");
       
    })
  });
};

//LOGIN
export const login = (req, res) => {
  //CHECK USER

  const q = "SELECT * FROM user WHERE userName = ?";

  db.query(q, [req.body.userName], (err, data) => {
    if (err) return res.status(500).json(err);
    if (data.length === 0) return res.status(404).json("User not found!");

    //Check password
    const isPasswordCorrect = bcrypt.compareSync(
      req.body.password,
      data[0].password
    );

    if (!isPasswordCorrect)
      return res.status(400).json("Wrong username or password!");
      //THis app uses tokens to keep track of users logged in and logged out
    const token = jwt.sign({ id: data[0].id }, "jwtkey");
    const { password, ...other } = data[0];

    res
      .cookie("access_token", token, {
        httpOnly: true,
      })
      .status(200)
      .json(other);
  });  
};
//LOGOUT
export const logout = (req, res) => {
  res.clearCookie("access_token",{
    sameSite:"none",
    secure:true
  }).status(200).json("User has been logged out.")
};
