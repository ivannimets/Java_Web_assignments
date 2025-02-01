<%@ include file="JPINBanner.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPIN Club - Member Details</title>
        <link rel="stylesheet" href="Styles/display.css">
    </head>
    <body>
        <section>
            <h2>Thanks for joining our club!</h2>
            <p>Here is the information you entered:</p>
            <p><strong>Full Name:</strong> ${param.fullname}</p>
            <p><strong>Email:</strong> ${param.email}</p>
            <p><strong>Phone:</strong> ${param.phone}</p>
            <p><strong>IT Program:</strong> ${param.program}</p>
            <p><strong>Year:</strong> ${param.year}</p>
            
            <p>To register another member, click on the Back button in your browser or the Return button shown below.</p>
            
            <form action="JPINRegister.jsp" method="get">
                <button type="submit">Return</button>
            </form>
        </section>
    </body>
     <%@ include file="JPINFooter.jsp" %>
</html>
