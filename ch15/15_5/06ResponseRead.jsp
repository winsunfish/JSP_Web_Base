<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<html>
<head><title>PostRead</title></head><body>
<p align="left">
<font size="5"><b>Page of PostRead</b></font>
</p><HR>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Poster";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String sql="SELECT * FROM Informations" ;

  if (stmt.execute(sql))   {
     ResultSet rs = stmt.getResultSet();
     while (rs.next()) {
        String indexStr= rs.getString("�s��");
        String timeStr= rs.getString("�ɶ�");
        String nameStr= rs.getString("�W��");
        String emailStr= rs.getString("�H�c");
        String articalStr= rs.getString("�峹");

        out.print("�ɶ��G" + timeStr + "<BR>");
        out.print("�W�١G" + nameStr + "<BR>");
        out.print("�H�c�G" + emailStr + "<BR>");
        out.print("�峹<BR>" + articalStr + "<BR>");

        out.print("<FORM METHOD=post  ACTION=07ResponseReadDB.jsp>");
        out.print("<INPUT TYPE=radio  NAME=respIndex " +
                          "VALUE=" + indexStr + ">��ܶs�I��");
        out.print("<INPUT TYPE=submit VALUE=\"Ū���^��\">");
        out.print("<HR>");
 
        }
  }
  stmt.close();
  con.close();
%>
</body>
</html>