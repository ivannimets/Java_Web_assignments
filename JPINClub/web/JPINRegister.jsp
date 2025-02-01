<%@ include file="JPINBanner.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPIN Club - Register</title>
        <link rel="stylesheet" href="Styles/register.css">
    </head>
    <body>
        <h1>New Member Registration Page</h1><br><br><br>
        
        <form action="JPINDisplayMember.jsp" method="post" >
            <label for="fullname">Full Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="fullname" name="fullname" required style="width:300px"><br><br>

            <label for="email">Email:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="email" id="email" name="email" required style="width:300px"><br><br>
 
             <label for="phone">Phone Number:</label>&nbsp;&nbsp;&nbsp;
            <input type="tel" id="phone" name="phone"  pattern="[0-9]{10}" 
                   title="Phone number must be 10 digits"><br><br>
            
            <label for="program">IT Program:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select id="program" name="program" style="width:200px">
                <option value="CAS">CAS</option>
                <option value="SQATE">SQATE</option>
                <option value="CPA">CPA</option>
                <option value="CP">CP</option>
                <option value="ITID">ITID</option>
                <option value="CAD">CAD</option>
                <option value="ITSS">ITSS</option>
            </select><br><br>

            <label for="year">Year:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select id="year" name="year" style="width:100px">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select><br><br>

            <button type="submit">Register Now!</button>
            <button type="reset">Reset</button>
        </form>
        
    </body>
    <%@ include file="JPINFooter.jsp" %>
</html>
