import React, { useEffect } from "react";
import "./Header.scss";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCartShopping, faUser } from "@fortawesome/free-solid-svg-icons";
import { Link, useNavigate } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { userSlice } from "../../redux/userSlice";
import NotificationsNoneIcon from '@mui/icons-material/NotificationsNone';
import { useState } from "react";
import axios from "axios";
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import socketIOClient from "socket.io-client";
import { useRef } from "react";
const host = "http://localhost:2000";


export const Header = () => {
  const dispatch = useDispatch()
  const user = useSelector((state) => state.user);
  const [check, setCheck] = useState(true)
  const [data, setData] = useState([])
  const [room, setRoom] = useState([])
  const navigate = useNavigate()
  const socketRef = useRef();
  useEffect(()=>{
    if(user.id){
      const getRoom = async () =>{
        const result = await axios.get(`/api/allRoom?user_id=${user.id}`)
        setRoom(result.data.data)
      }
      getRoom()
    }
  }, [user.id])
  useEffect(() => {
    if(user.id){
      socketRef.current = socketIOClient.connect(host);
      socketRef.current.on("connect", () => {});
      socketRef.current.emit("ADD_CLIENT_TO_NOTIF_ROOM", {
        user_id: user.id,   
        room: room
      })
      socketRef.current.on('NEW COMMENT', (data)=>{
        // console.log(data)
        if(data.user_id !== user.id){
          toast(`${data.name} đã bình luận về một topic mà bạn từng comment trước đó`)
        }    
      })
      return () => {
        socketRef.current.disconnect();
      }
    }
  }, [user.id, room]);

  const handleLogout = () => {
    alert('Đăng xuất thành công')
    dispatch(userSlice.actions.logout())
  }
  const handleOpenNotif = async () => {
    const user_id = user.id || 0
    const result = await axios.get(`/api/notification?user_id=${user_id}`)
    // console.log(result.data.data)
    setData(result.data.data)
    setCheck(!check)
  }
  const handleSubmit = (item)=>{
    // console.log(item)
    navigate(`/comment/${item.transaction_id}`)
  }
  return (
    <div className="header-container">
      <ToastContainer/>
      
      <Link style={{ color: "black", textDecoration: "none" }} to={"/"}>
        <div className="name">BK COFFEE</div>
      </Link>

      <div className="title">
        <div>
          Hãy đến với bk coffee, bạn sẽ tận hưởng những thứ tốt đẹp nhất
        </div>
        {user.name !== 'Guest' ?
          <div className="hello">
            <div className="hello-name">
              Hello, {user.name}
            </div>
            <div className="hello-img">
              <img src={user.image_path} alt="" />
            </div>
          </div>
          : <>One love, one future</>}
      </div>

      <div className="btn">
        {check ?
          <div onClick={handleOpenNotif} className="notification">
            <NotificationsNoneIcon />
          </div>
          :
          <div className="notification-large">
            <div className="nf-container">
              <div onClick={() => setCheck(!check)} className="nf-close">X</div>
              {data.length ?
                <div className="notif-container">
                    {data.map((item, key)=>(
                      <div onClick={()=>handleSubmit(item)} key={key} className="nf-item">
                        {item.other_name} đã bình luận một topic mà bạn đang theo dõi (Topic: {item.name})
                      </div>
                  ))}
                </div>
              :
                  <div className="nf-item">
                    Bạn không có thông báo nào
                  </div>
              }
            </div>
          </div>
        }
        {user.name === 'Guest' ? (
          <Link style={{ color: "black", marginRight: "20px" }} to="/login">
            <div className="cartBtn">
              <FontAwesomeIcon icon={faUser} />
            </div>
          </Link>
        ) : (
          <div className="cartBtn" style={{ marginRight: "20px" }}>
            <Link to={`/user/${user.id}`}>
              <FontAwesomeIcon icon={faUser} style={{ color: "red" }} />
            </Link>
            <div className="popupUser">
              <div onClick={handleLogout} className="title">Đăng xuất</div>
            </div>
          </div>
        )}

        <Link style={{ color: "black" }} to="/cart">
          <div className="cartBtn1">
            <FontAwesomeIcon icon={faCartShopping} />
          </div>
        </Link>
      </div>

    </div>
  );
};
