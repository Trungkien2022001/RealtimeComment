const express = require('express')
const route = express.Router()
const { NewTransaction, NewComment, GetAllTransaction, GetTransaction, GetNotification, GetAllRoom } = require('../components/comment/commentController')

route.post('/newTransaction', NewTransaction)
route.post('/newComment', NewComment)
route.get('/allTransaction', GetAllTransaction)
route.get('/transaction', GetTransaction)
route.get('/notification', GetNotification)
route.get('/allroom', GetAllRoom)
module.exports = route