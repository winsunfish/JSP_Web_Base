<%@ page contentType= "text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>Ex51</title></head><body>
<p align="left">
<font size="5"><b>Page of Ex51</b></font>
</p>
<%
 Date d = new Date();

 String timeStr= d.toLocaleString();
 String timeGMT= d.toGMTString();
 long timeLog= d.getTime();

 out.print("timeStr= " + timeStr + "<br>");
 out.print("timeGMT= " + timeGMT + "<br>");
 out.print("timeLog= " + timeLog + "<br>");
%>
</body>
</html>