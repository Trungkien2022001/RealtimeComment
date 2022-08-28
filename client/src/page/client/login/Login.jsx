import React from "react";
import { useState } from "react";
import axios from "axios";
import "./login.scss";
import { Header } from "../../../components/header/Header";
import { Footer } from "../../../components/footer/Footer";
import { useDispatch } from "react-redux";
import { userSlice } from "../../../redux/userSlice";
import { Link, useNavigate } from "react-router-dom";

export const Login = () => {
  const [password, setPassword] = useState("");
  const [username, setUsername] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate()
  const handleLogin = () => {
    axios
      .post("/auth/login", {
        username,
        password,
      })
      .then((res) => {
        if (!res.data.err) {
          alert(res.data.message);
          console.log(res.data.data[0]);
          dispatch(userSlice.actions.login(res.data.data[0]));
          navigate('/')
        } else {
          alert(res.data.message);
        }
      });
  };

  return (
    <div>
      <Header></Header>
      <div className="container">
        <div className="login-form">
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
          <button onClick={handleLogin}>Login</button>
        </div>
        <Link
          to={"/register"}
          style={{ textDecoration: "none", color: "black" }}
        >
          <div className="toRegister">Bạn chưa có tài khoản? Đăng ký ngay</div>
        </Link>
      </div>
      <Footer></Footer>
    </div>
  );
};

