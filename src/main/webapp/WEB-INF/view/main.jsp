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
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/styles.css" />
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
        <a href="bibtex">Download as bibtex</a> </br></br>
        
    </body>
</html>
