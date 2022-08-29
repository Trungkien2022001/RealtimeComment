import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { Link, useLocation } from 'react-router-dom'
import { Header } from '../../../components/header/Header'
import './Comment.scss'
import socketIOClient from "socket.io-client";
import { useRef } from "react";
const host = "http://localhost:2000";
export const Comment = () => {
    const user = useSelector((state) => state.user);
    const transaction_id = useLocation().pathname.split('/')[2]
    const [data, setData] = useState([])
    const [transactionName, setTransactionName] = useState('')
    const [cmt, setCmt] = useState('')
    const socketRef = useRef();
    const messageRef = useRef(null)
    useEffect(() => {
      messageRef.current?.scrollIntoView();
    }, [data]);
    useEffect(() => {
      socketRef.current = socketIOClient.connect(host);
      socketRef.current.on("connect", () => {});
      socketRef.current.emit("ADD_CLIENT_TO_ROOM", {
        transaction_id,
        user_id: user.id,   
      })
      socketRef.current.on('SERVER_SEND_COMMENT', (data)=>{
        // console.log(data);
        setData(prev =>[...prev, {
          transaction_id: data.transaction_id,
          user_id: data.user_id,
          comment: data.comment,
          stamp_id: data.stamp_id ||1,
          image_id: data.image_id ||1,
          image_path: data.image_path,
          name: data.name
        }])
      })
      return () => {
        socketRef.current.disconnect();
      };
    }, [user, transaction_id]);
    useEffect(() => {
      axios.get(`/api/transaction?id=${transaction_id}`).then(res=>{
        // console.log(res.data.data);
        setData(res.data.data.transaction_data)
        setTransactionName(res.data.data.transaction_name)
      })
    }, [transaction_id])
    const handleSubmit = async ()=>{
      if(cmt !== ''){
        socketRef.current.emit('CLIENT_SEND_COMMENT', {
          transaction_id: transaction_id,
          user_id: user.id,
          comment: cmt,
          stamp_id: 1,
          image_id: 1,
          image_path: user.image_path,
          name: user.name
        })
        await axios.post('/api/newComment', {
          user_id: user.id,
          transaction_id: transaction_id,
          comment: cmt,
          image_id: 1,
          stamp_id: 1
        }).then(res=>{
          // console.log(res)
        })
        setData(prev=>[...prev, {
          transaction_id,
          comment: cmt,
          image_id: 1,
          image_path: user.image_path,
          user_id: user.id,
          name: user.name
        }])
        setCmt('')
      }
    }
    const onEnterPress = (e) => {
      if (e.keyCode === 13 && e.shiftKey === false) {
          handleSubmit()
      }
  }
    return (
        <div>
            <Header/>
            <div className="container">
                <div className="container-name">
                  Topic: {transactionName}
                  <Link style={{color: "black"}} to={'../'}>
                    <div className="close">Quay lại</div>
                  </Link>
                </div>
                <div className="container-body">
                  <div className="body">
                    {!data.length &&
                    <div className="container-body__none">
                      Nhập ý kiến của bạn để bắt đầu cuộc trò chuyện
                    </div>
                    }
                    {data.length && data.map((item, key)=>(
                      <div key={key} className={user.id === item.user_id ? "item item-mine" : "item"}>
                        <div className="avatar">
                          <img src={item.image_path} alt="" />
                        </div>
                        <div className="chat">
                          <div className="name">
                            {item.name}
                          </div>
                          <div className="comment">
                            {item.comment}
                          </div>
                        </div>
                      </div>
                    ))}
                    <div ref={messageRef} />
                  </div>
                </div>
                <div className="container-input">
                  <input onKeyDown={onEnterPress} onChange={(e)=>setCmt(e.target.value)} value={cmt} type="text"  placeholder='Nhập ý kiến của bạn'/>
                  <button onClick={handleSubmit}>Gửi</button>
                </div>
            </div>
        </div>
    )
}
