require('dotenv').config
const express = require("express")
const app = express()
const server = require('http').createServer(app);
const cors = require('cors')
const authRoute = require('./routes/auth')
const commentRoute = require('./routes/comment')
const PORT = 2000

const socketIo = require('socket.io')(server, {
    cors:{
        origin:"*",
    }
})

app.use(express.json())
app.use(cors())
app.use('/auth', authRoute)
app.use('/api', commentRoute)

let room = [] //CHỨA THÔNG TIN VỀ CÁC ROOM, ID, SOCKET_ID CỦA USER 

socketIo.on("connection", (socket) =>{
    // console.log("new client connected on socketID:" , socket.id)

    //SOCKER PHẦN COMMENT
    socket.on('ADD_CLIENT_TO_ROOM', (data)=>{
        socket.join(data.transaction_id)
        // tạo room, thêm, sửa, xóa room
        // const transaction_index = room.findIndex(item =>item.transaction_id === data.transaction_id)
        // if(transaction_index === -1){
        //     room.push({
        //         transaction_id: data.transaction_id,
        //         member: [{
        //             user_id: data.user_id,
        //             socket_id: socket.id
        //         }]
        //     })
        // } else{
        //     // console.log(room[transaction_index]);
        //     const user_index = room[transaction_index].member.findIndex(item => item.user_id === data.user_id)
        //     if(user_index === -1){
        //         room[transaction_index].member.push({
        //             user_id: data.user_id,
        //             socket_id: socket.id
        //         })
        //     } else {
        //         room[transaction_index].member[user_index].socket_id = id
        //     }
        // }
    })
    socket.on('CLIENT_SEND_COMMENT', (data)=>{
        
        socket.to(data.transaction_id).emit('SERVER_SEND_COMMENT', data)
        const notif_room = 'notif'+ data.transaction_id

        //NẾU CLIENT COMMENT VÀO MỘT PHÒNG CHƯA TỪNG COMMENT TRƯỚC ĐÓ, THÌ THÊM CLIENT VÀO ROOM MỚI ĐỂ LẮNG NGHE
        let index = room.findIndex(i=>i.user_id == data.user_id)
        if(index !== -1){
            const room_index = room[index].room_id.findIndex(item=>item===notif_room)
            if(room_index === -1 ) {
                room[index].room_id.push(notif_room)
                const room_arr = room[index].room_id
                socket.join(room_arr)
            }
            // console.log("gr", room[index].room_id);
        }

        //BẮN TẤT CẢ NHỮNG THÔNG BÁO CHO NHỮNG THẰNG COMMENT BÀI VIẾT KIA
        socket.to(notif_room).emit('NEW COMMENT', data)
    })

    // NOTIFICATION
    socket.on('ADD_CLIENT_TO_NOTIF_ROOM', (data)=>{
        let user_index = room.findIndex(i=>i.user_id === data.user_id)
        if(user_index === -1){
            let room_arr = []
            for(i of data.room){
                room_arr.push('notif'+i.transaction_id)
            }
            socket.join(room_arr)
            room.push({
                user_id: data.user_id,
                room_id: room_arr,
                socket_id: socket.id
            })
        }
        else {
            let room_arr = []
            for(i of data.room){
                room_arr.push('notif'+i.transaction_id)
            }
            room[user_index].room_id = room_arr
            room[user_index].socket_id = socket.id
            socket.join(room_arr)
        }
    })
    socket.on('disconnect', ()=>{
        //XÓA CLIENT KHỎI ARRAY
        const user_index = room.findIndex(i=>i.socket_id===socket.id)
        if(user_index !== -1){
            room.splice(user_index, 1)
        }
        // console.log("disconnected by socketId:", socket.id)
    })

})

const deletedById = (id) =>{
    for (const i of notification_room) {
        let index = i.user_arr.findIndex(item =>item.socket_id === id)
        if(index !== -1){
            if(i.user_arr.length === 1) {
                notification_room.splice(notification_room.findIndex(item=>item == i), 1)
            } else {
                i.user_arr.splice(index, 1)
            }
        } 
    }
}
server.listen(PORT,(req, res)=>{
    console.log(`App is listening on port ${PORT}`)
})
