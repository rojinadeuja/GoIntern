<%-- 
    Document   : signout
    Created on : Jan 18, 2017, 10:20:38 AM
    Author     : Roseenah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
         <%
        session.invalidate();
        
        response.sendRedirect("index.jsp");
        
        %>
    </body>
</html>
