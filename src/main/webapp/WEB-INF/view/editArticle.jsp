<%-- 
    Document   : editArticle
    Created on : Apr 26, 2012, 7:39:56 PM
    Author     : Noemj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <form action="<%=request.getContextPath()%>/lisaaReference" method="POST"> 
                       <input type="hidden" name="type" value="article"> 
                       <span>Key: <input type="text" value="${reference.key}" name="key"><br> 
                       <span>Author: <input type="text" value="${reference.author}" name="author"><br> 
                       <span>Title: <input type="text" value="${reference.title}" name="title"><br> 
                       <span>Journal: <input type="text" value="${reference.journal}" name="journal"><br> 
                       <span>Year: <input type="text" value="${reference.yearvalue}" name="yearvalue"><br> 
                       <span>Volume: <input type="text" value="${reference.volume}" name="volume"><br> 
                       <span>Number: <input type="text" value="${reference.number}" name="number"><br>
                       <span>Pages: <input type="text" value="${reference.pages}" name="pages"><br> 
                       <span>Month: <input type="text" value="${reference.month}" name="month"><br> 
                       <span>Note: <input type="text" value="${reference.note}" name="note"><br> 
                       <span>Tag: <input type="text" value="${reference.tag}" name="tag"><br> 
                       <input type="submit"> 
                </form>
    </body>
</html>
