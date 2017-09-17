<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<html>
<head><title>Ex46</title></head><body>
<p align="center">
<font size="5"><b>Front Page of Ex46</b></font>
</p>
<center>
開啟本網頁，立即自動建立資料表 "書目_by_JSP"
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Book09_4";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();
  String query = "create table 書目_by_JSP ( " 
                      + "編號 Text(20) PRIMARY KEY," 
                      + "書名 Text(20),"
                      + "作者 Text(10)," 
                      + "書價 Number"
                      + ")";
   stmt.executeUpdate(query);

   stmt.close();
   con.close();
%>
</body>
</html>