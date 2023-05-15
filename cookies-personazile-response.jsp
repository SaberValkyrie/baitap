<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/05/2023
  Time: 4:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
</head>
<%
    String favlang = request.getParameter("favoriteLanguage");

    Cookie thecookie = new Cookie("myApp.favoriteLanguage",favlang);

    thecookie.setMaxAge(60*60*24*365);

    response.addCookie(thecookie);
%>
<body>
Thanks ! We set your favorite language to: ${param.favoriteLanguage}
<br><br>
<a href="cookies-homepage.jsp">Return to homepage</a>
</body>
</html>
