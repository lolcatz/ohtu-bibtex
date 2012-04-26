<%-- 
    Document   : book
    Created on : Apr 25, 2012, 9:40:04 PM
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
                <input type="hidden" name="type" value="book">
                <span>Key: <input type="text" name="key"><br>
                <span>Author: <input type="text" name="author"><br>
                <span>Title: <input type="text" name="title"><br>
                <span>Booktitle: <input type="text" name="booktitle"><br>
                <span>Year: <input type="text" name="yearvalue"><br>
                <span>Editor: <input type="text" name="editor"><br>               
                <span>Volume: <input type="text" name="volume"><br>
                <span>Number: <input type="text" name="number"><br>
                <span>Series: <input type="text" name="series"><br>
                <span>Pages: <input type="text" name="pages"><br>              
                <span>Address: <input type="text" name="address"><br>
                <span>Month: <input type="text" name="month"><br>
                <span>Organization: <input type="text" name="organization"><br>
                <span>Publisher: <input type="text" name="publisher"><br>
                <span>Note: <input type="text" name="note"><br>                   
                <input type="submit">
         </form>
                
        
        <a href="<%=request.getContextPath()%>/main">Back to main page</a>
    </body>
</html>
