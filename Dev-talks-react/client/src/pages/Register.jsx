import React, { useState } from "react";
import { Link } from 'react-router-dom'

const Register = () => {
  const [inputs, setInputs]=useState();
  return (
    <div className="auth">
      <h1>👩🏻‍💻Dev-talks🧑🏿‍💻</h1>
      <form action="">
        <input required type="text" placeholder='username'/>
        <input required type="email" placeholder='email'/>
        <input required type="password" placeholder='password'/>
        <button>Register</button>
        <p>There is an error!</p>
        <span>Do you have an account? <Link to="/login">login</Link></span>
      </form>
    </div>
  )
}

export default Register