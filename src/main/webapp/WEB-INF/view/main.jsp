<%-- 
    Document   : main
    Created on : 12.4.2012, 14:38:53
    Author     : psaikko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lolcatz's Ohtu Bibtex</title>
    </head>
    <body>
        <%
            String e = request.getParameter("error");
            if (e != null)
                out.println("<FONT COLOR=\"#FF0000\">"+e+"</FONT></br>");
        %>
        <a href="add">Add new reference</a> </br>
        <a href="listaa">List all references</a> </br></br>
        
        <form action="editReference" method="POST">
            Edit a reference: </br>
            <span>Key = <input type="text" name="key"></span>
            <input type="submit">
        </form>
        
    </body>
</html>
