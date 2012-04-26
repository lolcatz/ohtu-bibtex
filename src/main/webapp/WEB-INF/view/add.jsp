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
            function OnChange(dl)
            {
                var myindex  = dl.selectedIndex
                var SelValue = dl.options[myindex].value
                <%-- document.write(SelValue) --%>
                if (SelValue == "book") {
                    var oldHTML = document.getElementById('para').innerHTML;
                    var newHTML = '<form action="lisaaReference" method="POST"> <input type="hidden" name="type" value="book"><span>Key: <input type="text" name="key"><br><span>Author: <input type="text" name="author"><br><span>Title: <input type="text" name="title"><br><span>Booktitle: <input type="text" name="booktitle"><br><span>Year: <input type="text" name="year"><br><span>Editor: <input type="text" name="editor"><br><span>Volume: <input type="text" name="volume"><br><span>Number: <input type="text" name="number"><br><span>Series: <input type="text" name="series"><br><span>Pages: <input type="text" name="pages"><br><span>Address: <input type="text" name="address"><br><span>Month: <input type="text" name="month"><br><span>Organization: <input type="text" name="organization"><br><span>Publisher: <input type="text" name="year"><br><span>Note: <input type="text" name="note"><br><input type="submit"></form>';
                    document.getElementById('para').innerHTML = newHTML;
                }
                else {
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lisää viite</title>
    </head>
    <body>

        <form name="URLlist">
            <select name="droplist" onchange='OnChange(this.form.droplist);'>
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
            <p id="para">aaaaaaaaaaaaaaa</p>
        </form>

        <a href="<%=request.getContextPath()%>/help">wat do? HLEP!</a></br>

    </body>
</html>
