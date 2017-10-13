<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/25
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.regex.Pattern" %>
<html>
<head>
    <title>除法计算</title>
</head>
<body>
    <%!
        String str1 = null;
        String str2 = null;
        double num1 = 1;
        double num2 = 1;

        public static boolean isInteger(String str) {
            Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
            return pattern.matcher(str).matches();
        }
    %>
    <%

        str1= request.getParameter("num1");
        str2= request.getParameter("num2");
        if(str1!=null&&isInteger(str1))
            num1 = Double.parseDouble(str1);
        else{
            out.print("请输入数字num1<br>");
            str1 = null;
        }

        if(str2!=null&&isInteger(str2))
            num2 = Double.parseDouble(str2);
        else {
            out.print("请输入数字num2<br>");
            str2=null;
        }

        if(str1!=null && str2!=null ){
            out.print("num1/num2="+num1/num2+"<br>");
            out.print("sqrt(num1/num2)="+Math.sqrt(num1/num2)+"<br>");
        }
    %>
</body>
</html>
