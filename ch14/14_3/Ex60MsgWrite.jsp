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
     out.print("��ƶ�g������");
     %><br>
     <a href= "MsgWrite.html" target= "_top">�����^����</a>
     <%
  } 
  else {
     Date msgDate= new Date();
     String dateStr= msgDate.toLocaleString();

     String sql="INSERT INTO Informations(�ɶ�, �W��," +
                       "�H�c, �d��) VALUES ('" +
                        dateStr + "','" + msgName + "','" +
                        eMail + "','" + data + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("���\�����d����ƿ�J");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>