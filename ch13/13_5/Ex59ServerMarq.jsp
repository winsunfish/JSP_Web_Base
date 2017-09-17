<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>Ex59ServerMarq</title></head><body>
<p align="center">
<font size="5"><b>Sub Page of Ex59ServerMarq</b></font>
</p>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Marquee";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String dataStr = request.getParameter("marqData");

  if(dataStr=="")  {
     out.print("訊息填寫未完成");
     %><br>
     <a href= "MarqWriteDB.html" target= "_top">按此回首頁</a>
     <%
  } 
  else {
     Date msgDate= new Date();
     String dateStr= msgDate.toLocaleString();

     String sql="INSERT INTO Informations(時間, 訊息) VALUES ('" +
                        dateStr + "','" +  dataStr + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("成功完成訊息資料輸入");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>