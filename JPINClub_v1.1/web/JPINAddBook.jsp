<%-- 
    Document   : JPINAddBook
    Created on : Feb 17, 2025, 2:49:28 a.m.
    Author     : ivann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPIN Club - Add Book</title>
        <link rel="stylesheet" href="Styles/addBook.css">
    </head>
    <%@ include file="JPINBanner.jsp" %>
    <body>
        <h2>Add a Book</h2>

        <form action="JPINAddBook" method="post">

            <%
                ArrayList<String> errors = (ArrayList<String>) request.getAttribute("errors");
                if (errors != null) {
                    for (String error : errors) {
            %>
            <p style="color: red"><%= error%></p>
            <%
                    }
                }
            %>

            <table>
                <tr>
                    <td>            
                        <label for="code">Code:</label>
                    </td>
                    <td>
                        <input type="text" name="code" value="<%= request.getAttribute("code") != null ? request.getAttribute("code") : ""%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="description">Description:</label>
                    </td>
                    <td>
                        <input type="text" name="description" value="<%= request.getAttribute("description") != null ? request.getAttribute("description") : ""%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="quantity">Quantity:</label>
                    </td>
                    <td>
                        <input type="text" name="quantity" value="<%= request.getAttribute("quantity") != null ? request.getAttribute("quantity") : ""%>">
                    </td>
                </tr>
            </table>
            <div style="margin-left: 30px;">
                <button type="submit">Save</button>
                <button type="button" onclick="window.location.href = 'JPINDisplayBooks'">Cancel</button>
            </div>
        </form>
    </body>
    <%@ include file="JPINFooter.jsp" %>
</html>
