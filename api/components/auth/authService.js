const execQuery = require("../../models")
const jwt = require('jsonwebtoken')

async function fetchLogin(req, res){
    const username = req.body ? req.body.username : ''
    const password = req.body ? req.body.password : ''
    const result = await execQuery(`select * from user where username = '${username}'`)
    if(result.length == 0) return{
        err: true,
        message: "Username không tồn tại",
    }
    if(password == result[0].password){
        const accessToken = jwt.sign({ user: username }, "geriudfnjcweiksdv,woie3fw2efwe235@#%")
        await execQuery(`update user set token = '${accessToken}' where username = '${username}'`)
        result[0].token = accessToken
    } else return {
        err: true,
        message: "Sai username hoặc mật khẩu"
    }
    return{
        err:false,
        message:"Đăng nhập thành công",
        data: result,
    }
}

async function fetchRegister(req, res){
    const username = req.body ? req.body.username : ''
    const name = req.body ? req.body.name : ''
    const phone = req.body ? req.body.phone : ''
    const email = req.body ? req.body.email : ''
    const password = req.body ? req.body.password : ''
    const address = req.body ? req.body.address : ''
    const image_path = req.body ? req.body.image_path : ''
    let result = await execQuery(`select * from user where username = '${username}'`)
    if(result.length > 0) return{
        err: true,
        message: "Đã tồn tại username"
    }
    result = await execQuery(`select * from user where email = '${email}'`)
    if(result.length > 0) return{
        err: true,
        message: "Đã tồn tại email"
    }
    result = await execQuery(`insert into user (name, username, password, phone, email, address, image_path) value('${name}', '${username}','${password}','${phone}','${email}','${address}', '${image_path}')`)
    if(!result) return{
        err: true,
        message: "Có lỗi"
    }
    return {
        err: false,
        message: "Đăng ký tài khoản thành công"
    }
}
module.exports ={
    fetchLogin,
    fetchRegister,
}