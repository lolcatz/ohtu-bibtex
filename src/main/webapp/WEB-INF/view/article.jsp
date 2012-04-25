<%-- 
    Document   : article
    Created on : Apr 25, 2012, 9:42:28 PM
    Author     : Noemj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add an article</title>
    </head>
    <body>
        <form action="lisaaReference" method="POST">
                <input type="hidden" name="type" value="article">
                <span>Key: <input type="text" name="key"><br>
                <span>Author: <input type="text" name="author"><br>
                <span>Title: <input type="text" name="title"><br>
                <span>Journal: <input type="text" name="journal"><br>
                <span>Year: <input type="text" name="year"><br>
                <span>Volume: <input type="text" name="volume"><br>             
                <span>Number: <input type="text" name="number"><br>
                <span>Pages: <input type="text" name="pages"><br>
                <span>Month: <input type="text" name="month"><br>
                <span>Note: <input type="text" name="note"><br>              
                <input type="submit">
         </form>
                
        
        <a href="<%=request.getContextPath()%>/main">Back to main page</a>
    </body>
</html>
