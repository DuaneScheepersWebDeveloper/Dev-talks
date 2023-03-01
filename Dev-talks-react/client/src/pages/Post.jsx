import axios from "axios";
import React, { useEffect, useState, useContext } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import Menu from "../components/Menu";
import { AuthContext } from "../context/authContext";
import DOMPurify from "dompurify";
import moment from "moment";

const Post = () => {
  const [post, setPost] = useState({});
  const location = useLocation();
  const navigate = useNavigate();
  const postId = location.pathname.split("/")[2];
  const { currentUser } = useContext(AuthContext);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await axios.get(`/posts/${postId}`);
        setPost(res.data);
      } catch (err) {
        console.log(err);
      }
    };
    fetchData();
  }, [postId]);

  const handleDelete = async ()=>{
    try {
      await axios.delete(`/posts/${postId}`);
      navigate("/")
    } catch (err) {
      console.log(err);
    }
  } 

  const getText = (html) =>{
    const doc = new DOMParser().parseFromString(html, "text/html")
    return doc.body.textContent
  }
  return (
    <div className="single">
      <div className="content">
        <img src={`../uploads/${post?.img}`} alt="" />
        <div className="user">
        {post.userImg && <img
            src={post.userImg}
            alt=""
          />}
          <div className="info">
            <span>{post.userName}</span>
            <p>Posted {moment(post.date).fromNow()}</p>
          </div>
          {currentUser.username === post.username && (
            <div className="edit">
              <Link to={`/userBlog?edit=2`} className="editButton" state={post}>
                <i  class="fa-solid fa-pen-to-square"></i>
              </Link>
              <Link className="deleteButton">
                <i onClick={handleDelete} class="fa-solid fa-trash"></i>
              </Link>
            </div>
          )}
        </div>
        <h1>{post.title}</h1>
        <p
          dangerouslySetInnerHTML={{
            __html: DOMPurify.sanitize(post.description),
          }}
        ></p> 
      </div>
      <Menu cat={post.cat} />
    </div>
  );
};

export default Post;
