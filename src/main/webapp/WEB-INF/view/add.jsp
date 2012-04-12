<%-- 
    Document   : add
    Created on : 11.4.2012, 17:27:55
    Author     : noemj
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lisää viite</title>
    </head>
    <body>
        <FONT COLOR="#FF0000">${error}</FONT>
        <form action="lisaaReference" method="POST" commandName="registerForm">
            <span>Type: <input type="text" name="type" value="${type_}"></span><br>
            <span>Key: <input type="text" name="key" value="${key_}"></span><br>
            <span>Fields: <textarea name="fields" cols="40" rows="5">${fields_}</textarea></span><br>
            <input type="submit">
        </form>
        
        Format: </br>
        key = value, </br>
        key2 = value2, </br>
        key3 = value3 </br>
        
        Protip! </br>
        key4 = value4, key5 = value5 works aswell! </br>
    </body>
</html>
