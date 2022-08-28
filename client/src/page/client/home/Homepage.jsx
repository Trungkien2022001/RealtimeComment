import axios from "axios";
import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import { Header } from "../../../components/header/Header";
import { Link } from "react-router-dom";
import './Homepage.scss'
// import socketIOClient from "socket.io-client";
// import { useRef } from "react";
// import { useSelector } from "react-redux";
// const host = "http://localhost:2000";

export const Homepage = () => {
  const [data, setData] = useState([])
  const [newChat, setNewChat] = useState('')
  const [check, setCheck] = useState(true)
  // const currentUser = useSelector((state) => state.user);
  // const socketRef = useRef();
  // useEffect(() => {
  //   console.log("Hello");
  //   socketRef.current = socketIOClient.connect(host);
  //   socketRef.current.on("connect", () => { });
  //   return () => {
  //     socketRef.current.disconnect();
  //   };
  // }, [currentUser]);
  useEffect(()=>{
    axios.get('/api/allTransaction').then(res=>{
      setData(res.data.data)
    })
  }, [])
  const handleSubmit = async ()=>{
    await axios.post('/api/newTransaction', {name: newChat}).then(res=>{
      setData(prev=>[...prev, {
        id: res.data.data.transaction_id,
        name: newChat,
      }])
      setCheck(!check)
    })
  }
  const onEnterPress = (e) => {
    if (e.keyCode === 13 && e.shiftKey === false) {
        handleSubmit()
    }
}
  return (
    <div>
      <Header></Header>
      <div className="container">
        <div className="header">
          Danh sách các topic
        </div>
        <div className="hompage-container">
          {data && data.length && data.map((item, key)=>(
            <Link key={key} style={{textDecoration: "none", color:"black"}} to={`/comment/${item.id}`}>
             <div className="homepage-container__item">
              {item.name}
            </div>
            </Link>
          ))}
          {check ?
          <div onClick={()=>setCheck(!check)} className="homepage-container_add">
            Thêm mới...
          </div>
          :
          <div className="homepage-add">
            <div className="add-item">
              <div className="add-header">
                Nhập tên: 
                <input onKeyDown={onEnterPress} onChange={(e)=>setNewChat(e.target.value)} type="text" placeholder="Nhập tên" />
              </div>
              <div className="add-submit">
                <button onClick={handleSubmit}>Thêm</button>
              </div>
              <div onClick={()=>setCheck(!check)} className="add-close">
                X
              </div>
            </div>
          </div>
           }
         
        </div>
      </div>
    </div>
  );
};
