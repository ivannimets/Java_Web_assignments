<%-- 
    Document   : JPINDisplayBooks
    Created on : Feb 17, 2025, 1:11:19 a.m.
    Author     : ivann
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="JPINClub.business.JPINBook" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPIN Books</title>
        <link rel="stylesheet" href="Styles/books.css">
    </head>
    <%@ include file="JPINBanner.jsp" %>
    <body>
        <h2>List of Books</h2>

        <table border="1" cellpadding="5">
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>Quantity</th>
            </tr>

            <%
                ArrayList<JPINBook> books = (ArrayList<JPINBook>) request.getAttribute("allBooks");
                for (JPINBook book : books) {
            %>
            <tr>
                <td><%= book.getCode()%></td>
                <td><%= book.getDescription()%></td>
                <td><%= book.getQuantity()%></td>
            </tr>
            <%
                }
            %>
        </table>

        <br>
        <form action="JPINAddBook.jsp" method="get">
            <button type="submit">Add Book</button>
        </form>
    </body>
    <%@ include file="JPINFooter.jsp" %>
</html>
