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
       @${reference.type}{{reference.key},</br>
       author = {${reference.author}},</br>
       title = {${reference.title}},</br>
       journal = {${reference.journal}},</br>
       year = {${reference.year}},</br>
       volume = {${reference.volume}},</br>
       pages = {${reference.pages}},</br>
       publisher = {${reference.publisher}},</br>
       address = {${reference.address}}</br>
       }</br>
      </c:forEach>
    
          <a href="add">Lisää uusi viite</a>
          
    </body>
</html>
