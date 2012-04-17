<%-- 
    Document   : add
    Created on : 11.4.2012, 17:27:55
    Author     : noemj
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lisää viite</title>
    </head>
    <body>
        <c:if test="${error}"> <font color="#FF0000">${error}</font></c:if>
        <form action="lisaaReference" method="POST">
            <span>Type: 
                <select name="type" >
                    <c:forEach var="type" items="${types}">
                        <c:if test="${type != type_}">
                            <option value=${type}>${type}</option>
                        </c:if>
                        <c:if test="${type == type_}">
                            <option selected="yes" value=${type}>${type}</option>
                        </c:if>
                    </c:forEach>
                </select>    
            </span><br>
            <span>Key: <input type="text" name="key" value="${key_}">
            </span><br>
            <span>Fields: <textarea name="fields" cols="40" rows="5">${fields_}</textarea>
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
