<%@ page contentType="text/html;charset=big5" %>
<%
  class Mynumber {
      int i;
  }
%>
<html>
<head><title>Ex08</title></head>
<body> 
<% 
  int j = 5;
  out.print("���ت��� j ���G " + j + "<br>");

  Mynumber a = new Mynumber();
  a.i = 10;
  out.print("�غc���� i ���G " + a.i); 
 %>
</body>
</html>