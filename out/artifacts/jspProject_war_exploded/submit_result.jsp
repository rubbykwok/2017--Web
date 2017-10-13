<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/9
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String pwd = request.getParameter("password");

    if(username.equals("123456")&&pwd.equals("654321")){
        response.sendRedirect("http://www1.szu.edu.cn");
    }else{
        response.sendRedirect("login.jsp?username="+username+"&&login=false");
    }
%>

</body>
</html>
