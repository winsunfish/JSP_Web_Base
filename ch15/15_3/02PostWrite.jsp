<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>PostWrite</title></head><body>
<p align="center">
<font size="5"><b>Sub Page of PostWrite</b></font>
</p>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Poster";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String postName = request.getParameter("postName");
  String eMail = request.getParameter("eMail");
  String postData = request.getParameter("postData");

  if(postName=="" || eMail=="" || postData=="")  {
     out.print("��ƶ�g������");
     %><br>
     <a href= "PostWrite.html" target= "_top">�����^����</a>
     <%
  } 
  else {
     Date postDate= new Date();
     String dateStr= postDate.toLocaleString();

     String sql="INSERT INTO Informations(�ɶ�, �W��," +
                       "�H�c, �峹) VALUES ('" +
                        dateStr + "','" + postName + "','" +
                        eMail + "','" + postData + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("���\�����峹��ƿ�J");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>