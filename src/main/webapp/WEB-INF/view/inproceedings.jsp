<%-- 
    Document   : inproceedings
    Created on : Apr 25, 2012, 9:42:21 PM
    Author     : Noemj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="lisaaReference" method="POST">
            <input type="hidden" name="type" value="inproceedings">
                <span>Key: <input type="text" name="key"><br>
                <span>Author: <input type="text" name="author"><br>
                <span>Editor: <input type="text" name="editor"><br>
                <span>Title: <input type="text" name="title"><br>
                <span>Publisher: <input type="text" name="year"><br>
                <span>Year: <input type="text" name="year"><br>
                <span>Volume: <input type="text" name="volume"><br>
                <span>Number: <input type="text" name="number"><br>
                <span>Series: <input type="text" name="series"><br>
                <span>Address: <input type="text" name="address"><br>
                <span>Edition: <input type="text" name="edition"><br>
                <span>Month: <input type="text" name="month"><br>
                <span>Note: <input type="text" name="note"><br>
           
                <input type="submit">
         </form>
                
        
        <a href="<%=request.getContextPath()%>/main">Back to main page</a>

    </body>
</html>
