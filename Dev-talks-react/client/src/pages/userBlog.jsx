import React, { useState } from "react";
import ReactQuill from "react-quill";
import "react-quill/dist/quill.snow.css";
import axios from "axios";
import { useLocation, useNavigate } from "react-router-dom";
import moment from "moment";

const UserBlog = () => {
  const [value, setValue] = useState("");
  console.log(value);
  return (
    <div className="userBlog">
      <div className="content">
        <input type="text" placeholder="Title" />
        <div className="editorContainer">
          <ReactQuill
            className="editor"
            theme="snow"
            value={value}
            onChange={setValue}
          />
        </div>
      </div>
      <div className="menu">
        <div className="item">
          <h1>Publish</h1>
          <span>
            <b>Status:</b> Draft
          </span>
          <span>
            <b>Visibility:</b> Public
          </span>
          <input style={{ display: "none" }} type="file" name="" id="file" />
          <label className="file" htmlFor="file">
            Upload Image
          </label>
          <div className="buttons">
            <button>Save as a draft</button>
            <button>Update</button>
          </div>
        </div>
        <div className="item">
          <h1>Category</h1>
          <div className="cat">
            {/* People */}
            <input type="radio" name="cat" value="people" id="people" />
            <label htmlFor="people">People</label>
          </div>
          <div className="cat">
            {/* Technology */}
            <input type="radio" name="cat" value="technology" id="technology" />
            <label htmlFor="people">Technology</label>
          </div>
          <div className="cat">
            {/* Code */}
            <input type="radio" name="cat" value="code" id="code" />
            <label htmlFor="code">Code</label>
          </div>
          <div className="cat">
            {/* ChatGPT */}
            <input type="radio" name="cat" value="chatgpt" id="chatgpt" />
            <label htmlFor="chatgpt">ChatGPT</label>
          </div>
        </div>
      </div>
    </div>
  );
};

export default UserBlog;
