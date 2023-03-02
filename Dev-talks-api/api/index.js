import express from "express";
import authRoutes from "./routes/auth.js";
// import userRoutes from "./routes/user.js";
import postRoutes from "./routes/posts.js";
import cookieParser from "cookie-parser";
import multer from "multer";

//EXPRESS
const app = express();

app.use(express.json());
app.use(cookieParser());

//STORAGE
//multer temporarily stores info into our frontend to be able to access your uploads
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, "./../../Dev-talks-react/client/public/uploads");
    },
    filename: function (req, file, cb) {
      cb(null, Date.now() + file.originalname);
    },
  });
  
  const upload = multer({ storage });

  app.post("/api/upload", upload.single("file"), function (req, res) {
    const file = req.file;
    res.status(200).json(file.filename);
    console.log(file);
  });
  

app.use("/api/auth", authRoutes);
// app.use("/api/user", userRoutes);
app.use("/api/posts", postRoutes);

app.listen(8800, ()=>{
    console.log("Server started on port 8800 http://localhost:8800");
});