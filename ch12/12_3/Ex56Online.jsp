<%@ page contentType= "text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<% Date T= new Date(); %>
<html>
<head><title>Online Visitor</title></head><body>
<%
  response.addIntHeader("refresh", 5);

  out.print("This is the page of Ex56 Online Visitor" + "<br>");
  out.print("" + "<br>");

  out.print("�������C5����@��" + "<br>");
  out.print("" + "<br>");

  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Online";
  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

//�����u�W���X�̺��}�P�ɶ��ÿ�J��Ʈw-------------------------
  String timeStr= T.toLocaleString();
  out.print("�{�b�ɶ�: " + timeStr + "<BR>");
  long timeL= T.getTime();
  int timeInt= (int)timeL;
  String ClientAddr = request.getRemoteAddr();

  String sql1= "INSERT INTO Informations(�ɶ�, ���})" +
                      "VALUES(" + timeInt + ",'" + ClientAddr + "')";
  stmt.executeUpdate(sql1);

//�R��10��H�e���X�̸�Ʈw���----------------------------------
  int timeDInt= timeInt - 10000;
  String sql2= "DELETE FROM Informations WHERE �ɶ�<= " +
                       timeDInt + ";";
  stmt.execute(sql2);
 
//�L�X�u�W���X�̺��}�P�H��------------------------------------------
  String sql3= "SELECT DISTINCT ���} FROM Informations";
  if(stmt.execute(sql3)){
     out.print("�ثe�u�W�ϥΪ̡G" + "<BR>");
     ResultSet rs= stmt.getResultSet();
     int i= 0;
     while(rs.next()) {
        String addrResult= rs.getString("���}");
        out.print(addrResult + "<BR>");
        i++;
     }
     out.print("�ثe�u�W�ϥΪ̤H�ơG" + i +"<BR>");
  }

  stmt.close();
  con.close();
%>
</body>
</html>