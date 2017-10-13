/**
 * Created by Administrator on 2017/10/9.
 */


var userTip = $('#user-tip');
var loginTip = $('#login-tip');

function $(name) {
    return document.querySelector(name);
}

function show(ele){
    ele.style.display = 'block';
}
function hide(ele){
    ele.style.display = 'none';
}
function usrCheck() {
    var username = $('#user-name').value;
    if(username.trim() == ''){
        show(userTip);
        return false;
    }else{
        hide(userTip);
        return true;
    }
}
function pwdCheck() {
    var password = $('#password').value;
    var pwTip = $('#pw-tip');
    if(password.trim() == ''){
        show(pwTip);
        return false;
    }else {
        hide(pwTip);
        return true;
    }
}
function check() {
    console.log('check');
    if(usrCheck()&&pwdCheck()){
        return true;
    }else {
        hide(loginTip);
        return false;
    }
}
