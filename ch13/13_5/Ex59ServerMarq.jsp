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
     out.print("�T����g������");
     %><br>
     <a href= "MarqWriteDB.html" target= "_top">�����^����</a>
     <%
  } 
  else {
     Date msgDate= new Date();
     String dateStr= msgDate.toLocaleString();

     String sql="INSERT INTO Informations(�ɶ�, �T��) VALUES ('" +
                        dateStr + "','" +  dataStr + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("���\�����T����ƿ�J");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>