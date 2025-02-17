<%-- 
    Document   : JPINError
    Created on : Feb 17, 2025, 1:05:00 p.m.
    Author     : ivann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <jsp:include page="JPINBanner.jsp"/>
        <section>
            <h1>Java Error</h1>
            <p>Sorry, Java has thrown an exception.</p>
            <p>To continue, click the Back button.</p>

            <h2>Details</h2>
            <p>Type: ${pageContext.exception["class"]}</p>
            <p>Message: ${pageContext.exception.message}</p>
        </section>
        <jsp:include page="JPINFooter.jsp" />
    </body>
</html>
