<%@ page contentType= "text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>Ex50</title></head><body>
<p align="left">
<font size="5"><b>Page of Ex50</b></font>
</p>
<%
 Date d = new Date();

 out.print("Year = " + (d.getYear() + 1900) + "<br>"); 
 out.print("Month = " + d.getMonth() + "<br>"); 
 out.print("Date = " + d.getDate() + "<br>"); 
 out.print("Day = " + d.getDay() + "<br>"); 
 out.print("Hours = " + d.getHours() + "<br>"); 
 out.print("Minutes = " + d.getMinutes() + "<br>"); 
 out.print("Seconds = " + d.getSeconds() + "<br>");  
%>
</body>
</html>