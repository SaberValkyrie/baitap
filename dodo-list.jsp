<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/05/2023
  Time: 1:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page import="java.util.*" %>
<html>
<body>
<form action="dodo-list.jsp">
    Add new item:<input type="text" name ="theItem" />
    <input type="submit" value="Submit" />
</form>

<%
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    if (items == null){
        items = new ArrayList<String>();
        session.getAttribute("myToDoList");
    }

    String theItem = request.getParameter("theItem");
    if(theItem != null){
        items.add(theItem);
    }
%>
<hr>
<b>To list item:</b> <br>
<ol>
    <%
        for (String temp: items){
            out.println("<li>" + temp + "</li>") ;
        }
    %>
</ol>
</body>
</html>
