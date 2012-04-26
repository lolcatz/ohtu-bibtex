<%-- 
    Document   : edit
    Created on : Apr 26, 2012, 7:35:14 PM
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
                            <input type="hidden" name="type" value="book"> 
                            <span>Key: <input type="text" value="${reference.key}" name="key"><br> 
                            <span>Author: <input type="text" value="${reference.author}" name="author"><br> 
                            <span>Title: <input type="text" value="${reference.title}" name="title"><br> 
                            <span>Booktitle: <input type="text" value="${reference.booktitle}" name="booktitle"><br> 
                            <span>Year: <input type="text" value="${reference.yearvalue}" name="yearvalue"><br> 
                            <span>Editor: <input type="text" value="${reference.editor}" name="editor"><br> 
                            <span>Volume: <input type="text" value="${reference.volume}" name="volume"><br> 
                            <span>Number: <input type="text" value="${reference.number}" name="number"><br>
                            <span>Series: <input type="text" value="${reference.series}" name="series"><br> 
                            <span>Pages: <input type="text" value="${reference.pages}" name="pages"><br> 
                            <span>Address: <input type="text" value="${reference.address}" name="address"><br> 
                            <span>Month: <input type="text" value="${reference.month}" name="month"><br> 
                            <span>Organization: <input type="text" value="${reference.organization}" name="organization"><br>
                            <span>Publisher: <input type="text" value="${reference.publisher}" name="publisher"><br>
                            <span>Note: <input type="text" value="${reference.note}" name="note"><br>   
                            <input type="submit"> 
                     </form>
    </body>
</html>
