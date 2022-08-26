
const express = require("express")
require('dotenv').config
const authRoute = require('./routes/auth')
const PORT = 2000
const app = express()
const server = require('http').createServer(app);
const socketIo = require('socket.io')(server, {
    cors:{
        origin:"*",
    }
})

const cors = require('cors')
app.use(express.json())
app.use(cors())

app.use('/auth', authRoute)

server.listen(PORT,(req, res)=>{
    console.log(`App is listening on port ${PORT}`)
})
