const execQuery = require("../../models")

async function fetchNewTransaction(req, res){
    const name = req.body.name||'an danh'
    const result = await execQuery(`insert into transaction (name) value('${name}')`)
    return {
        err: false,
        status: 200,
        data:{
            transaction_id: result.insertId
        },
        message: 'Success'
    }
}
async function fetchGetAllTransaction(req, res){
    const result = await execQuery(`select * from transaction`)
    return {
        err: false,
        status: 200,
        data:result,
        message: 'Success'
    }
}
async function fetchGetTransaction(req, res){
    const transaction_id = req.query.id
    const transaction_result =await  execQuery(`select name from transaction where id = ${transaction_id}`)
    const result = await execQuery(`select cmt.*, user.name, user.image_path from comment as cmt, user WHERE cmt.user_id = user.id AND cmt.transaction_id = ${transaction_id}`)
    return{
        err: false,
        status: 200,
        data:{
            transaction_name: transaction_result[0].name,
            transaction_data: result
        },
        message: 'Success'
    }
}
async function fetchGetNotification(req, res){
    const user_id = req.query.user_id
    const result = await execQuery(`select user.name as other_name, nf.*, ts.name from notification as nf, user, transaction as ts where ts.id = nf.transaction_id and user.id = nf.other_id and nf.user_id = ${user_id} and other_id > 0 ORDER BY updatedAt desc`)
    
    return{
        err: false,
        status: 200,
        data: result,
        message: 'Success'
    }
}
async function fetchGetAllRoom(req, res){
    const user_id = req.query.user_id
    const result = await execQuery(`select transaction_id from notification where user_id= ${user_id}`);
    return{
        err: false,
        status: 200,
        data: result,
        message: 'Success'
    }
}
async function fetchCreateComment(req, res){
    const user_id = req.body.user_id
    const transaction_id = req.body.transaction_id
    const comment = req.body.comment
    const image_id = req.body.image_id||0
    const stamp_id = req.body.stamp_id||0
    const transaction_result = await execQuery(`select * from transaction where id = ${transaction_id}`)
    if(transaction_result.length == 0){
        return {
            err: true,
            data: {},
            code:404,
            message: "Transaction not found"
        }
    }
    const notification_result = await execQuery(`select id from notification where user_id = ${user_id} and transaction_id = ${transaction_id}`)
    if(notification_result.length == 0){
        await execQuery(`insert into notification(user_id, transaction_id) value(${user_id}, ${transaction_id})`)
    }
    await execQuery(`update notification set other_id = ${user_id} where transaction_id = ${transaction_id} and user_id <>${user_id}`)
    try { 
        const result = await execQuery(`insert into comment(transaction_id, comment, user_id, image_id, stamp_id) value(${transaction_id}, '${comment}', ${user_id}, ${image_id}, ${stamp_id})`)
        return {
            err: false,
            data: result,
            message: "Success"
        }
    } catch (error) {
        return {
            err: true,
            data: {},
            code: 500,
            message: "Server error"
        }
    }
}
module.exports = {
    fetchNewTransaction,
    fetchCreateComment,
    fetchGetAllTransaction,
    fetchGetTransaction,
    fetchGetNotification,
    fetchGetAllRoom
}
