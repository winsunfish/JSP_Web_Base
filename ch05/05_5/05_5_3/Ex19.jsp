<%@ page contentType= "text/html;charset=big5" %>
<html>
<head><title>Ex19</title></head><body>
<%
  request.setCharacterEncoding("big5");

  String user = request.getParameter("user");
  String pwd = request.getParameter("pwd");

  if(user.equals("��T��") && pwd.equals("1234"))
      out.print("�W�ٱK�X�L�~");
  else
      response.sendRedirect("http://163.15.40.242:8080/examples/Ex19.html");
%>
</body>
</html>