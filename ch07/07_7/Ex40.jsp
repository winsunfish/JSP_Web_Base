<%@ page contentType= "text/html;charset=big5" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>Ex40</title></head><body>
<%
  request.setCharacterEncoding("big5");
  String val = request.getParameter("dir");
  File f = new File(val);

  if (f.delete())
      out.print("���\�R���ؿ� : " + val +"<br>");
  else
      out.print("�R���ؿ�����" + "<br>");
%>
</body>
</html>