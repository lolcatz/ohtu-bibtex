<%-- 
    Document   : add
    Created on : 11.4.2012, 17:27:55
    Author     : noemj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lisää viite</title>
    </head>
    <body>
        <form action="lisaaReference" method="POST" commandName="registerForm">
            <span>Type: <input type="text" name="type" ></span><br>
            <span>Key: <input type="text" name="key" ></span><br>
            <span>Fields: <textarea name="fields" cols="40" rows="5">Format: key = value, key2 = value2..</textarea></span><br>
            <input type="submit">
        </form>
    </body>
</html>
