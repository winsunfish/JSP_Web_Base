<%@ page contentType= "text/html;charset=big5" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>Ex35</title></head><body>
<%
  request.setCharacterEncoding("big5");
  String val = request.getParameter("dir");
  File f = new File(val);

   if (f.mkdir())
        out.print("���\�إߥؿ� : " + val +"<br>");
   else
        out.print("�إߥؿ�����" + "<br>");
%>
</body>
</html>