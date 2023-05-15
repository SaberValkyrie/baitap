<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/05/2023
  Time: 4:09 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
</head>
<body>
<form action="cookies-login.jsp">
   Username:<input type="text" name ="username" />
    Password:<input type="password" name ="password" />
    <input type="submit" value="Login" />
</form>

<h3>Infomation </h3>
<%
    String user = request.getParameter("username");
    String passs = request.getParameter("password");

    Cookie uc = new Cookie("myApp.username",user);
    Cookie pc = new Cookie("myApp.password",passs);

    uc.setMaxAge(60*60*24*365);
    pc.setMaxAge(60*60*24*365);

    response.addCookie(uc);
    response.addCookie(pc);

%>
<%
    if(user != null || passs != null){
        out.println("<h4> User:" + user + ", pass: " + passs);
    }
%>


<br>
<a href="cookies-login.jsp">Persionalize this page</a>
</body>
</html>
