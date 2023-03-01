import React,{useContext} from "react";
import { Link } from "react-router-dom";
import { AuthContext } from "../context/authContext";

const Navbar = () => {
  
  const { currentUser, logout } = useContext(AuthContext);
  return (
    <header>
    <div className="navbar">
      <div className="container">
        <div className="logo">
          <Link to="/" className="link">
          <h1>👩🏻‍💻Dev-talks🧑🏿‍💻</h1>
          </Link>
        </div>
       
        <div className="links">
           <span className="post-link"><Link className="link" to="/?cat=people"><h5>People</h5></Link></span>
           <span className="post-link"><Link className="link" to="/?cat=technology"><h5>Technology</h5></Link></span>
           <span className="post-link"><Link className="link" to="/?cat=code"><h5>Code</h5></Link></span>
           <span className="post-link"><Link className="link" to="/?cat=chatgpt"><h5>ChatGPT</h5></Link></span>
          <span className="user-link">{currentUser?.userName}</span>
          {currentUser ? (
            <span className="user-link"  onClick={logout}>Logout</span>
          ) : (
            <Link className="user-link" to="/login">
              Login
            </Link>
          )}
          <span className="post">
            <Link className="link" to="/userBlog">Post</Link>
          </span>
        </div>
      </div>
    </div>
    </header>
  );
};

export default Navbar;
