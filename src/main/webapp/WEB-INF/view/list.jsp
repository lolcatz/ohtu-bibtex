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
       <c:if test="${reference.author != null}">
       Author = {${reference.author}},</br>
       </c:if> 
       <c:if test="${reference.title != null}">
       Title = {${reference.title}},</br>
       </c:if> 
       <c:if test="${reference.journal != null}">
       Journal = {${reference.journal}},</br>
       </c:if> 
       <c:if test="${reference.year != null}">
       Year = {${reference.year}},</br>
       </c:if> 
       <c:if test="${reference.volume != null}">
       Volume = {${reference.volume}},</br>
       </c:if> 
       <c:if test="${reference.number != null}">
       Number = {${reference.number}},</br>
       </c:if> 
       <c:if test="${reference.pages != null}">
       Pages = {${reference.pages}},</br>
       </c:if> 
       <c:if test="${reference.month != null}">
       Month = {${reference.month}},</br>
       </c:if> 
       <c:if test="${reference.note != null}">
       Note = {${reference.note}},</br>
       </c:if> 
       <c:if test="${reference.editor != null}">
       Editor = {${reference.editor}},</br>
       </c:if> 
       <c:if test="${reference.address!= null}">
       Address = {${reference.address}},</br>
       </c:if> 
       <c:if test="${reference.edition != null}">
       Edition = {${reference.edition}},</br>
       </c:if> 
       <c:if test="${reference.booktitle != null}">
       Booktitle = {${reference.booktitle}},</br>
       </c:if> 
       <c:if test="${reference.organization != null}">
       Organization = {${reference.organization}},</br>
       </c:if> 
       <c:if test="${reference.series != null}">
       Series = {${reference.series}},</br>
       </c:if>     
       }</br>
       <a href="edit/${reference.id}">[edit]</a></br>
       <a href="delete/${reference.id}">[delete]</a></br>
      </c:forEach>
       
      <a href="<%=request.getContextPath()%>/main">Back to main page</a>
          
    </body>
</html>