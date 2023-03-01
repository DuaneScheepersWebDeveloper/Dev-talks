import axios from "axios";
import React, { useState, useContext } from "react";

import { Link, useNavigate } from "react-router-dom";
import { AuthContext } from "../context/authContext.jsx";

const Login = () => {
  const [inputs, setInputs] = useState({
    userName: "",
    password: "",
  });
  const [err, setError] = useState(null);

  const navigate = useNavigate();
 

  const { login } = useContext(AuthContext);
  console.log(login);

  const handleChange = (e) => {
    setInputs((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      // await axios.post("/auth/login",inputs);
      await login(inputs)
      navigate("/");
    } catch (err) {
      setError(err.response.data);
    }
  };
  return (
    <div className="auth">
      <h1>👩🏻‍💻Dev-talks🧑🏿‍💻</h1>
      <form action="">
        <input
        required
          type="text"
          placeholder="username"
          name="userName"
          onChange={handleChange}
          
        />
        <input
        required
          type="password"
          placeholder="password"
          name="password"
          onChange={handleChange}
          
        />
        <button onClick={handleSubmit}>Login</button>
        {err && <p>{err}</p>}
        <span>
          Don't have an account? <Link to="/register">Register</Link>
        </span>
      </form>
    </div>
  );
};

export default Login;
