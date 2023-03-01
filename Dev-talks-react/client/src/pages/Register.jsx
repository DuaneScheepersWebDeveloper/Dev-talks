import axios from "axios";
import React, { useState ,useContext} from "react";

import { Link, useNavigate } from "react-router-dom";


const Register = () => {
  const [inputs, setInputs] = useState({
    userName: "",
    email: "",
    password: "",
  });
  const [err, setError] = useState(null);

  const navigate = useNavigate();

  const handleChange = (e) => {
    setInputs((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      await axios.post("/auth/register", inputs);
      navigate("/login");
      // console.log("User has been created");
    } catch (err) {
      setError(err.response.data);
      console.log("There was an error.");
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
          type="email"
          placeholder="email"
          name="email"
          onChange={handleChange}
        />
        <input
          required
          type="password"
          placeholder="password"
          name="password"
          onChange={handleChange}
        />
        <button onClick={handleSubmit}>Register</button>
        {err && <p>{err}</p>}
        <span>
          Do you have an account? <Link to="/login">login</Link>
        </span>
      </form>
    </div>
  );
};

export default Register;
