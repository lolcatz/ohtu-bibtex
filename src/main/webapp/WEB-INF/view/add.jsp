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
        <c:if test="${error}"> <font color="#FF0000">${error}</font></c:if>
        <form action="<%=request.getContextPath()%>/lisaaReference" method="POST">          
            <span>Type: 
                <select name="type" onchange="loadPage(this.form.elements[0]">
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
            
            
            <!--
            <c:if test="${type == article}">
                <span>Author: <input type="text" name="author"><br>
                <span>Title: <input type="text" name="title"><br>
                <span>Journal: <input type="text" name="journal"><br>
                <span>Year: <input type="text" name="year"><br>
                <span>Volume: <input type="text" name="volume"><br>             
                <span>Number: <input type="text" name="number"><br>
                <span>Pages: <input type="text" name="pages"><br>
                <span>Month: <input type="text" name="month"><br>
                <span>Note: <input type="text" name="note"><br>
                <span>Key: <input type="text" name="key"><br>
            </c:if>
            
            <c:if test="${type == book}">
                <span>Author: <input type="text" name="author"><br>
                <span>Editor: <input type="text" name="editor"><br>
                <span>Title: <input type="text" name="title"><br>
                <span>Publisher: <input type="text" name="year"><br>
                <span>Year: <input type="text" name="year"><br>
                <span>Volume: <input type="text" name="volume"><br>
                <span>Number: <input type="text" name="number"><br>
                <span>Series: <input type="text" name="series"><br>
                <span>Address: <input type="text" name="address"><br>
                <span>Edition: <input type="text" name="edition"><br>
                <span>Month: <input type="text" name="month"><br>
                <span>Note: <input type="text" name="note"><br>
                <span>Key: <input type="text" name="key"><br>
            </c:if>
                    
            <c:if test="${type == inproceedings}">
                <span>Author: <input type="text" name="author"><br>
                <span>Title: <input type="text" name="title"><br>
                <span>Booktitle: <input type="text" name="booktitle"><br>
                <span>Year: <input type="text" name="year"><br>
                <span>Editor: <input type="text" name="editor"><br>               
                <span>Volume: <input type="text" name="volume"><br>
                <span>Number: <input type="text" name="number"><br>
                <span>Series: <input type="text" name="series"><br>
                <span>Pages: <input type="text" name="pages"><br>              
                <span>Address: <input type="text" name="address"><br>
                <span>Month: <input type="text" name="month"><br>
                <span>Organization: <input type="text" name="organization"><br>
                <span>Publisher: <input type="text" name="year"><br>
                <span>Note: <input type="text" name="note"><br>
                <span>Key: <input type="text" name="key"><br>
            </c:if>            
                -->
            <span>Fields: <textarea name="fields" cols="40" rows="5">${fields_}</textarea>
            </span><br>
            <input type="submit">
        </form>
            
            <a href="<%=request.getContextPath()%>/help">wat do? HLEP!</a></br>

        Format: </br>
        field1 = value1 </br>
        field2 = value2 </br>
        field3 = value3 </br>
        ... </br>
    </body>
</html>
