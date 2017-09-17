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
     out.print("資料填寫未完成");
     %><br>
     <a href= "PostWrite.html" target= "_top">按此回首頁</a>
     <%
  } 
  else {
     Date postDate= new Date();
     String dateStr= postDate.toLocaleString();

     String sql="INSERT INTO Informations(時間, 名稱," +
                       "信箱, 文章) VALUES ('" +
                        dateStr + "','" + postName + "','" +
                        eMail + "','" + postData + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("成功完成文章資料輸入");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>