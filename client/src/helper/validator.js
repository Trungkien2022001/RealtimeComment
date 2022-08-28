const checkRegister = (data) => {
    const {
        password,
        repassword,
        phone,
        username,
        email
    } = data
    if(username.length < 6) {
        alert("Username phải có độ dài tối thiểu 6 kí tự")
        return 0
    }
    if(password !== repassword){
        alert("Mật khẩu không trùng khớp")
        return 0
    }
    if(password.length < 6){
        alert("Mật khẩu phải có độ dài tối thiểu 6 kí tự")
        return 0
    }
    if(phone.length !== 10 && phone[0] !== '0'){
        alert("Số điện thoại không đúng")
        return 0
    }
    if (String(email)
    .toLowerCase()
    .match(
      /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    ) === null){
        alert("Nhập email sai định dạng")
        return 0
    }
    return 1
}
module.exports = {
    checkRegister
}