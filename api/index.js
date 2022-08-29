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
let notification_room = [] //Chứa thông tin các room để thông báo khi có cmt mới
socketIo.on("connection", (socket) =>{
    // console.log("new client connected on socketID:" , socket.id)

    //Comment
    socket.on('ADD_CLIENT_TO_ROOM', (data)=>{
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
        socket.join(data.transaction_id)
        // console.log(`client ${data.user_id} joins to room ${data.transaction_id}`);
        // // room.map(item =>console.log(item))
    })
    socket.on('CLIENT_SEND_COMMENT', (data)=>{
        // console.log(data);
        socket.to(data.transaction_id).emit('SERVER_SEND_COMMENT', data)
        const notif_room = 'notif'+ data.transaction_id
        socket.to(notif_room).emit('NEW COMMENT', data)
    })


    //Notification
    // socket.on('ADD_CLIENT_TO_NOTIF_ROOM', (data)=>{
    //     // console.log(data)
    //     if(data.room.length != 0){
    //         for(i in data.room){
    //             let room_index = notification_room.findIndex(item=>item.notif_room == 'notif'+data.room[i]?.transaction_id)
    //             if(room_index == -1) {
    //                 notification_room.push({
    //                     notif_room: 'notif'+data.room[i].transaction_id,
    //                     user_arr: [{
    //                         user_id: data.user_id,
    //                         socket_id: socket.id
    //                     }]
    //                 })
    //             }
    //             else{
    //                 let user_index = notification_room[room_index].user_arr.findIndex(item => item.user_id == data.user_id)
    //                 if(user_index == -1){
    //                     notification_room[room_index].user_arr.push({
    //                         user_id: data.user_id,
    //                         socket_id: socket.id
    //                     })
    //                 } else{
    //                     notification_room[room_index].user_arr[user_index].socket_id = socket.id
    //                 }
    //             }
    //         }
    //     }
    //     //  console.log(notification_room)
    //     console.log('all room sau khi ket noi: ',notification_room)

    // })

        // Notification
    socket.on('ADD_CLIENT_TO_NOTIF_ROOM', (data)=>{
        let room_arr = []
        for(i of data.room){
            room_arr.push('notif'+i.transaction_id)
        }
        socket.join(room_arr)
    })
    socket.on('disconnect', ()=>{
        // console.log("disconnected by socketId:", socket.id)
        // deletedById(socket.id)
        // console.log('all room sau khi mot thang ngat ket noi: ',notification_room)
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
