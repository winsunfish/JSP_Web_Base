<%@ page contentType= "text/html;charset=big5" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>Ex36</title></head><body>
<%
  request.setCharacterEncoding("big5");
  String val = request.getParameter("fil");
  File f = new File(val);

  if (f.createNewFile())
        out.print("���\�إ߷s�ɮ� : " + val +"<br>");
   else
        out.print("�إ߷s�ɮץ���" + "<br>");
%>
</body>
</html>