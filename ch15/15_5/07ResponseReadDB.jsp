<%@ page contentType="text/html;charset=big5" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<html>
<head><title>ResponseReadDB</title></head><body>
<p align="left">
<font size="5"><b>Page of ResponseReadDB</b></font>
</p><HR>
<%
  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Poster";

  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

  request.setCharacterEncoding("big5");
  String indexStr = request.getParameter("respIndex");

  String sql1="SELECT * FROM Informations WHERE �s��= " +
                      indexStr + ";" ;

  if (stmt.execute(sql1))   {
     ResultSet rs = stmt.getResultSet();
     while (rs.next()) {
        String timeStr= rs.getString("�ɶ�");
        String nameStr= rs.getString("�W��");
        String emailStr= rs.getString("�H�c");
        String articalStr= rs.getString("�峹");

        out.print("�ɶ��G" + timeStr + "<BR>");
        out.print("�W�١G" + nameStr + "<BR>");
        out.print("�H�c�G" + emailStr + "<BR>");
        out.print("�峹<BR>" + articalStr + "<BR><HR><HR>");
      }
  }

  String sql2="SELECT * FROM ResponseInfo WHERE ��峹�s��= " +
                      indexStr + ";" ;

  if (stmt.execute(sql2))   {
     ResultSet rs = stmt.getResultSet();
     while (rs.next()) {
        String resptimeStr= rs.getString("�^���ɶ�");
        String respnameStr= rs.getString("�^���̦W��");
        String respemailStr= rs.getString("�^���̫H�c");
        String resparticalStr= rs.getString("�^���̰T��");

        out.print("�^���ɶ��G" + resptimeStr + "<BR>");
        out.print("�^���̦W�١G" + respnameStr + "<BR>");
        out.print("�^���̫H�c�G" + respemailStr + "<BR>");
        out.print("�^���̰T��<BR>" +  resparticalStr + "<BR>");

        out.print("<HR>");
 
        }
  }
  stmt.close();
  con.close();
%>
</body>
</html>