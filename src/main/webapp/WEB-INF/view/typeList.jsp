<%-- 
    Document   : typeList
    Created on : Apr 26, 2012, 9:51:40 PM
    Author     : Noemj
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searching by type</title>
    </head>
    <body>
        <c:forEach var="reference" items="${referencet}">   
            @${reference.type}{${reference.key},</br>
            <c:if test="${!empty reference.author}">
                Author = {${reference.author}},</br>
            </c:if> 
            <c:if test="${!empty reference.title}">
                Title = {${reference.title}},</br>
            </c:if> 
            <c:if test="${!empty reference.journal}">
                Journal = {${reference.journal}},</br>
            </c:if> 
            <c:if test="${!empty reference.yearvalue}">
                Year = {${reference.yearvalue}},</br>
            </c:if> 
            <c:if test="${!empty reference.volume}">
                Volume = {${reference.volume}},</br>
            </c:if> 
            <c:if test="${!empty reference.number}">
                Number = {${reference.number}},</br>
            </c:if> 
            <c:if test="${!empty reference.pages}">
                Pages = {${reference.pages}},</br>
            </c:if> 
            <c:if test="${!empty reference.month}">
                Month = {${reference.month}},</br>
            </c:if> 
            <c:if test="${!empty reference.note}">
                Note = {${reference.note}},</br>
            </c:if> 
            <c:if test="${!empty reference.editor}">
                Editor = {${reference.editor}},</br>
            </c:if> 
            <c:if test="${!empty reference.address}">
                Address = {${reference.address}},</br>
            </c:if> 
            <c:if test="${!empty reference.publisher}">
                Publisher = {${reference.publisher}},</br>
            </c:if>   
            <c:if test="${!empty reference.edition}">
                Edition = {${reference.edition}},</br>
            </c:if> 
            <c:if test="${!empty reference.booktitle}">
                Booktitle = {${reference.booktitle}},</br>
            </c:if> 
            <c:if test="${!empty reference.organization}">
                Organization = {${reference.organization}},</br>
            </c:if> 
            <c:if test="${!empty reference.series}">
                Series = {${reference.series}},</br>
            </c:if>     
            }</br>
        Tagi: ${reference.tag}
        <a href="edit/${reference.id}">[edit]</a></br>
        <a href="delete/${reference.id}">[delete]</a></br>
    </c:forEach>
    
    <a href="<%=request.getContextPath()%>/main">Back to main page</a>
    </body>
</html>
