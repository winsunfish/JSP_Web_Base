<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<html>
<head><title>Ex53Counter</title></head><body>
<p align="left">
<font size="5"><b>Sub Page of Ex53Counter</b></font>
</p>
<%
  int numInt= 0;
  String numStr;
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Visitor";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

//Ū����Ʈw���x�s�����X�H��--------------------------------------------
  String sql1= "SELECT * FROM Counter WHERE Work=0";
  if (stmt.execute(sql1))   {
      ResultSet rs = stmt.getResultSet();
      while (rs.next())
          numInt= rs.getInt("Num");
  }

//�N���X�H���[1�A�x�s�J��Ʈw---------------------------------------------
  if (session.isNew()) {
      numInt= numInt + 1;
      String sql2= "UPDATE Counter SET " +
                          "Work= " + 0 + "," +
                          "Num= " + numInt + 
                          " WHERE Work=  0";
      stmt.executeUpdate(sql2);
  }

//�ϥιϧμƦr�L�X���X�H��--------------------------------------
  numStr = String.valueOf(numInt);
  out.print("���������X�H���G " + "<br>");
  for(int i = 0; i < numStr.length(); i++)  {
    %>
    <img src = "./images/<%= numStr.charAt(i) %>.gif"></img>
    <%
  }
  stmt.close();
  con.close();
%>
</body>
</html>