<%@ page contentType= "text/html;charset=big5" %>
<%@ page import= "java.sql.*, java.util.Date" %>
<% Date T= new Date(); %>
<html>
<head><title>Online Visitor</title></head><body>
<%
  response.addIntHeader("refresh", 5);

  out.print("This is the page of Ex56 Online Visitor" + "<br>");
  out.print("" + "<br>");

  out.print("本網頁每5秒重整一次" + "<br>");
  out.print("" + "<br>");

  String JDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
  String connectDB="jdbc:odbc:Online";
  Class.forName(JDriver);
  Connection con = DriverManager.getConnection(connectDB);
  Statement stmt = con.createStatement();

//捕捉線上拜訪者網址與時間並輸入資料庫-------------------------
  String timeStr= T.toLocaleString();
  out.print("現在時間: " + timeStr + "<BR>");
  long timeL= T.getTime();
  int timeInt= (int)timeL;
  String ClientAddr = request.getRemoteAddr();

  String sql1= "INSERT INTO Informations(時間, 網址)" +
                      "VALUES(" + timeInt + ",'" + ClientAddr + "')";
  stmt.executeUpdate(sql1);

//刪除10秒以前拜訪者資料庫資料----------------------------------
  int timeDInt= timeInt - 10000;
  String sql2= "DELETE FROM Informations WHERE 時間<= " +
                       timeDInt + ";";
  stmt.execute(sql2);
 
//印出線上拜訪者網址與人數------------------------------------------
  String sql3= "SELECT DISTINCT 網址 FROM Informations";
  if(stmt.execute(sql3)){
     out.print("目前線上使用者：" + "<BR>");
     ResultSet rs= stmt.getResultSet();
     int i= 0;
     while(rs.next()) {
        String addrResult= rs.getString("網址");
        out.print(addrResult + "<BR>");
        i++;
     }
     out.print("目前線上使用者人數：" + i +"<BR>");
  }

  stmt.close();
  con.close();
%>
</body>
</html>