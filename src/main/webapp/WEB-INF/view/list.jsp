<%-- 
    Document   : list
    Created on : 11.4.2012, 17:28:10
    Author     : noemj
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
      
      <c:forEach var="reference" items="${referencet}">
      
       @${reference.type}{${reference.key},</br>
       <c:forEach var="field" items="${reference.fields}">
           ${field.key} = ${field.value},</br>
       </c:forEach>
       }</br>
      </c:forEach>
    
          <a href="add">Lisää uusi viite</a>
          
    </body>
</html>
