<%-- 
    Document   : add
    Created on : 11.4.2012, 17:27:55
    Author     : noemj
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>


<html>
    <head>
        <script language="JavaScript">
            function loadPage(list) {
                location.href=list.options[list.selectedIndex].value
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lisää viite</title>
    </head>
    <body>

        <form name="URLlist">
            <select name="droplist">
                <option selected="selected" value=" ">Which reference would you like to add?</option>
                <option value="book">Book</option>
                <option value="inproceedings">Inproceedings</option>
                <option value="article">Article</option>
            </select><input type="button" value="Go!" onclick="GotoURL(this.form)">
            <script language="JavaScript"> 
                function GotoURL(dl) { 
                    top.location.href = dl.droplist.options[dl.droplist.selectedIndex].value;
                } 
            </script>
        </form>

        <a href="<%=request.getContextPath()%>/help">wat do? HLEP!</a></br>

    </body>
</html>
