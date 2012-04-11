<%-- 
    Document   : add
    Created on : 11.4.2012, 17:27:55
    Author     : noemj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lisää viite</title>
    </head>
    <body>
        <form action="lisaaReference" method="POST">
            <span>Address: <input type="text" name="address" ></span><br>
            <span>Annote: <input type="text" name="annote" ></span><br>
            <span>Author: <input type="text" name="author" ></span><br>
            <span>Booktitle: <input type="text" name="booktitle" ></span><br>
            <span>Chapter: <input type="text" name="chapter" ></span><br>
            <span>Crossref: <input type="text" name="crossref" ></span><br>
            <span>Edition: <input type="text" name="edition" ></span><br>
            <span>Editor: <input type="text" name="editor" ></span><br>
            <span>Howpublished: <input type="text" name="howpublished" ></span><br>
            <span>Institution: <input type="text" name="institution" ></span><br>
            <span>Journal: <input type="text" name="journal" ></span><br>
            <span>Key: <input type="text" name="key" ></span><br>
            <span>Month: <input type="text" name="month" ></span><br>
            <span>Note: <input type="text" name="note" ></span><br>
            <span>Number: <input type="text" name="number" ></span><br>
            <span>Organization: <input type="text" name="organization"" ></span><br>
            <span>Pages: <input type="text" name="pages" ></span><br>
            <span>Publisher: <input type="text" name="publisher" ></span><br>
            <span>School: <input type="text" name="school" ></span><br>
            <span>Series: <input type="text" name="series" ></span><br>
            <span>Title: <input type="text" name="title" ></span><br>
            <span>Type: <input type="text" name="type" ></span><br>
            <span>Volume: <input type="text" name="volume" ></span><br>
            <span>Year: <input type="text" name="year" ></span><br>
            <input type="submit">
        </form>
    </body>
</html>
