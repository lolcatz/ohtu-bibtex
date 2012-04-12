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
        <%
            String e = request.getParameter("error");
            if (e != null)
                out.println("<FONT COLOR=\"#FF0000\">"+e+"</FONT>");
        %>
        <form action="lisaaReference" method="POST">
            <span>Type: <input type="text" name="type" value=<%
                    String t = request.getParameter("type_");
                    if (e != null) out.println("\""+t+"\""); else out.println("\"\"");
                %>>
            </span><br>
            <span>Key: <input type="text" name="key" value=<%
                    String k = request.getParameter("key_");
                    if (e != null) out.println("\""+k+"\""); else out.println("\"\"");
                %>>
            </span><br>
            <span>Fields: <textarea name="fields" cols="40" rows="5"><%
                                String f = request.getParameter("fields_");
                                if (e != null) out.println(f);
                %></textarea>
            </span><br>
            <input type="submit">
        </form>
        
        Format: </br>
        field1 = value1 </br>
        field2 = value2 </br>
        field3 = value3 </br>
        ... </br>
    </body>
</html>
