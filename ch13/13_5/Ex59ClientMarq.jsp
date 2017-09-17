<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<html>
<head><title>Ex59ClientMarq</title></head><body>
<p align="left">
<font size="5"><b>Page of Ex59ClientMarq</b></font>
</p><HR>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Marquee";
  StringBuffer sb = new StringBuffer();

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String sql="SELECT * FROM Informations" ;

  if (stmt.execute(sql))   {
      ResultSet rs = stmt.getResultSet();
      while (rs.next()) {
          sb.append( rs.getString("®É¶¡"));
          sb.append( rs.getString("°T®§"));
          sb.append("!!");
      }
  }
  String Info= sb.toString();
  %>
  <b><font color="#FF0000"><marquee scrolldelay="120" loop="5"        bgcolor="#00FFFF"><%= Info%>¡ã</marquee></font></b>
  <%
  stmt.close();
  con.close();
%>
</body>
</html>