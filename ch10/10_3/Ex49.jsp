<%@ page contentType= "text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>Ex49</title></head><body>
<p align="left">
<font size="5"><b>Page of Ex49</b></font>
</p>
<%
  long parse_Date=  Date.parse("Fri, 3 Aug 2007 22:15:00");
  long UTC_Date= Date.UTC(107, 7, 3, 22, 15, 0 );

  out.print("parse_Date= " + parse_Date + "<br>");
  out.print("UTC_Date= " + UTC_Date);
%>
</body>
</html>