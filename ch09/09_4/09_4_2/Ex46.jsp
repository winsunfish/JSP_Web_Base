<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<html>
<head><title>Ex46</title></head><body>
<p align="center">
<font size="5"><b>Front Page of Ex46</b></font>
</p>
<center>
�}�ҥ������A�ߧY�۰ʫإ߸�ƪ� "�ѥ�_by_JSP"
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Book09_4";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();
  String query = "create table �ѥ�_by_JSP ( " 
                      + "�s�� Text(20) PRIMARY KEY," 
                      + "�ѦW Text(20),"
                      + "�@�� Text(10)," 
                      + "�ѻ� Number"
                      + ")";
   stmt.executeUpdate(query);

   stmt.close();
   con.close();
%>
</body>
</html>