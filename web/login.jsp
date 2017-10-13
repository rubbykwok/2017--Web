<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/9
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" href="./index.css">
</head>

<body>

<div id="wrapper">
    <div id="login-wrapper">
        <div id="title">
            <h3>统一身份认证</h3>
        </div>
        <form action="submit_result.jsp" method="post" onsubmit="return check()">
        <div id="inputgrp">
                <div>
                    <input type="text" id="user-name" name="username" placeholder="用户名">
                    <img src="./img/user.png" id="user-icon" alt="usericon">
                    <p class="tips" id="user-tip">请输入用户名</p>
                </div>

                <div>
                    <input type="password" id="password" name="password" placeholder="密码">
                    <img src="./img/pw.png" id="pw-icon" alt="passwordicon">
                    <p class="tips" id="pw-tip">请输入密码</p>
                </div>
                <input type="checkbox" id="auto-login">
                <span style="color:grey;font-size:14px">
        一周内免登录
        </span>
        </div>
        <input type="submit" id="login-btn" value="登陆"</input>
        <p id="login-tip" class="tips">您输入的用户名或密码不正确</p>
        </form>
        <script>
            var user = "<%=request.getParameter("username")%>";
            var login = "<%=request.getParameter("login")%>"
            var loginTip = document.querySelector('#login-tip');
            if(login=='false'){
                document.getElementById("user-name").value=user;//显示上一次操作输入的用户名
                loginTip.style.display = 'block';//显示“您输入的用户名或密码不正确”
            }
        </script>

    </div>
</div>
<script src="./index.js"></script>
</body>
</html>
