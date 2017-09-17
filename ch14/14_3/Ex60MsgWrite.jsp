<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>Ex60MsgWrite</title></head><body>
<p align="center">
<font size="5"><b>Sub Page of Ex60MsgWrite</b></font>
</p>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Message";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String msgName = request.getParameter("msgName");
  String eMail = request.getParameter("eMail");
  String data = request.getParameter("data");

  if(msgName=="" || eMail=="" || data=="")  {
     out.print("資料填寫未完成");
     %><br>
     <a href= "MsgWrite.html" target= "_top">按此回首頁</a>
     <%
  } 
  else {
     Date msgDate= new Date();
     String dateStr= msgDate.toLocaleString();

     String sql="INSERT INTO Informations(時間, 名稱," +
                       "信箱, 留言) VALUES ('" +
                        dateStr + "','" + msgName + "','" +
                        eMail + "','" + data + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("成功完成留言資料輸入");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>