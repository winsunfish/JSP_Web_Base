<%@ page contentType= "text/html;charset=big5" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>Ex39</title></head><body>
<%
  request.setCharacterEncoding("big5");
  String val = request.getParameter("fil");
  File f = new File(val);

  if (f.delete())
      out.print("���\�R���ɮ� : " + val +"<br>");
  else
      out.print("�R���ɮץ���" + "<br>");
%>
</body>
</html>