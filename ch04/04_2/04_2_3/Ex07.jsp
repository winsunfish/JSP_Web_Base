<%@ page contentType="text/html;charset=big5" %>
<%
  class Mynumber {
      int number;
  }
%>
<html>
<head><title>Ex07</title></head>
<body> 
<% 
  Mynumber a = new Mynumber();
  a.number = 10;
  out.print("���� a �x�s�� number ���G" + a.number); 
 %>
</body>
</html>