<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<html>
<head><title>Ex47</title></head><body>
<p align="center">
<font size="5"><b>Front Page of Ex47</b></font>
</p>
<center>
�}�ҥ������A�ߧY�۰ʿ�J��ƪ� "�ѥ�_by_JSP"
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Book09_5";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();
      String query1 = "insert into �ѥ�_by_JSP values (" 
                      + "'001','Java��¦�J��','��T��', 520)";
      String query2 = "insert into �ѥ�_by_JSP values (" 
                      + "'002','�@�~�t��2/e','��T��', 590)";
      String query3 = "insert into �ѥ�_by_JSP values (" 
                      + "'003','JSP�P��Ʈw','��T��', 550)";
      String query4 = "insert into �ѥ�_by_JSP values (" 
                      + "'004','Servlet������Ʈw','��T��', 620)";
                      
      stmt.executeUpdate(query1);
      stmt.executeUpdate(query2);
      stmt.executeUpdate(query3);
      stmt.executeUpdate(query4);

   stmt.close();
   con.close();
%>
</body>
</html>