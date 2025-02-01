<%@ include file="JPINBanner.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPIN Club - Home</title>
         <link rel="stylesheet" href="Styles/home.css">
    </head>
    <body>
        <h1>Java Web Technologies : Section 2</h1><br><br>
        
        <p>Pair Programming Team:</p><br><br>
        
        <h2>Assignment 1</h2><br>
        <h2>Driver: Joy Patel</h2><br>
        <h2>Observer: Ivan Nimets</h2><br><br>
        
        <p>Current Date and Time:</p><br><br>
        
        <h2><%= new java.util.Date() %></h2> <br><br><br>
    </body>
    <%@ include file="JPINFooter.jsp" %>
</html>
