<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<html>
<head><title>PostWrite</title></head><body>
<p align="center">
<font size="5"><b>Page of ResponsWriteDB</b></font>
</p>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Poster";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String indexStr= request.getParameter("respIndex");
  String nameStr = request.getParameter("respName");
  String emailStr = request.getParameter("respEmail");
  String dataStr = request.getParameter("respData");

  if(indexStr=="" || nameStr=="" || emailStr=="" || dataStr=="")  {
     out.print("資料填寫未完成");
     %><br>
     <a href= "PostWrite.html" target= "_top">按此回首頁</a>
     <%
  } 
  else {
     Date respDate= new Date();
     String dateStr= respDate.toLocaleString();

     String sql="INSERT INTO ResponseInfo(原文章編號, 回應時間," +
                       "回應者名稱, 回應者信箱, 回應者訊息) VALUES (" +
                        indexStr + ",'" + dateStr + "','" + nameStr + "','" +
                        emailStr + "','" + dataStr + "')" ;
                      
    stmt.executeUpdate(sql);
    out.print("成功完成回應訊息輸入");

     stmt.close();
     con.close();
  }
   %>
</body>
</html>