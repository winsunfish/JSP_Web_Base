<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<html>
<head><title>Ex47</title></head><body>
<p align="center">
<font size="5"><b>Front Page of Ex47</b></font>
</p>
<center>
開啟本網頁，立即自動輸入資料表 "書目_by_JSP"
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Book09_5";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();
      String query1 = "insert into 書目_by_JSP values (" 
                      + "'001','Java基礎入門','賈蓉生', 520)";
      String query2 = "insert into 書目_by_JSP values (" 
                      + "'002','作業系統2/e','賈蓉生', 590)";
      String query3 = "insert into 書目_by_JSP values (" 
                      + "'003','JSP與資料庫','賈蓉生', 550)";
      String query4 = "insert into 書目_by_JSP values (" 
                      + "'004','Servlet網站資料庫','賈蓉生', 620)";
                      
      stmt.executeUpdate(query1);
      stmt.executeUpdate(query2);
      stmt.executeUpdate(query3);
      stmt.executeUpdate(query4);

   stmt.close();
   con.close();
%>
</body>
</html>