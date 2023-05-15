<%--
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
<h3>Training Portal</h3>
<%
    String favlang = "Java";

    Cookie[] theCookies = request.getCookies();


    if(theCookies != null)
    {
        for (Cookie tempCookies: theCookies){
            if ("myApp.favoriteLanguage".equals(tempCookies.getName())){
                favlang = tempCookies.getValue();
                break;
            }
        }
    }
%>
<h4>New Boook for <%= favlang %></h4>
<ul>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
</ul>
<h4>Lastest new reports for<%= favlang %></h4>
<ul>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
</ul>

<h4>Hot jobs for <%= favlang %></h4>
<ul>
    <li> blah blah blah</li>
    <li> blah blah blah</li>
</ul>
<hr>

<a href="cookies-personazile-form.html">Persionalize this page</a>
</body>
</html>
