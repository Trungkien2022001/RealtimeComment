import React from "react";
import { useState } from "react";
import axios from "axios";
import "./register.scss";
import { Navigate } from "react-router-dom";
import { useDispatch } from "react-redux";
import { userSlice } from "../../../redux/userSlice";
import { checkRegister } from "../../../helper/validator";

export const Register = () => {
  const dispatch = useDispatch()
  const [check, setCheck] = useState(false)
  const [password, setPassword] = useState("");
  const [username, setUsername] = useState("");
  const [name, setName] = useState("");
  const [repassword, setRepassword] = useState("");
  const [phone, setPhone] = useState("");
  const [email, setEmail] = useState("");
  const [address, setAddress] = useState("");
  const [files, setFiles] = useState("");
  const handleRegister = async  () => {
    let image_path = "https://anhdep123.com/wp-content/uploads/2021/05/hinh-avatar-trang.jpg"
    const data = {
      password,
      repassword,
      phone,
      name,
      username,
      email,
      address,
      image_path
    }

    if(checkRegister(data)){
      if(files){
        await Promise.all(
        Object.values(files).map(async (file) => {
          const image = new FormData();
          image.append("file", file);
          image.append("upload_preset", "upload");
          const result = await axios.post(
              "https://api.cloudinary.com/v1_1/trungkien2022001/image/upload",
              image
          )
          image_path = result.data.url
        }))
      }
      axios.post("auth/register", {
        password,
        repassword,
        phone,
        name,
        username,
        email,
        address,
        image_path
      }).then((res) => {
        if (!res.data.err) {
          axios
            .post("auth/login", {
              username,
              password,
            })
            .then((res) => {
              if (!res.data.err) {
                dispatch(userSlice.actions.login(res.data.data[0]))
              }
            });
          alert(res.data.message)
          setCheck(true)
        } else {
          alert(res.data.message)
        }
      });
    }

  };

  return (
    <div className="container">
      {check && <Navigate to="/" replace={true} />}
      <div className="register-form">
        <input
          type="text"
          onChange={(e) => {
            setName(e.target.value);
          }}
          placeholder="Full Name"
        />
        <input
          type="text"
          onChange={(e) => {
            setUsername(e.target.value);
          }}
          placeholder="Username"
        />
        <input
          type="text"
          onChange={(e) => {
            setPassword(e.target.value);
          }}
          placeholder="Password"
        />
        <input
          type="text"
          onChange={(e) => {
            setRepassword(e.target.value);
          }}
          placeholder="Repassword"
        />
        <input
          type="text"
          onChange={(e) => {
            setPhone(e.target.value);
          }}
          placeholder="Phone"
        />
        <input
          type="text"
          onChange={(e) => {
            setEmail(e.target.value);
          }}
          placeholder="Email"
        />
        <input
          type="text"
          onChange={(e) => {
            setAddress(e.target.value);
          }}
          placeholder="Address"
        />
        <input type="file"  onChange={(e) => {
            setFiles(e.target.files);
          }} name="Avatar" id="" />
        <button onClick={handleRegister}>Register</button>
      </div>
    </div>
  );
};

