<%@ page contentType="text/html;charset=big5" %>
<html>
<head><title>Ex32</title></head><body>
<%
  request.setCharacterEncoding("big5");
  String val = request.getParameter("course");
  out.println("�̳��w���ҥءG " + val );
%>
</body>
</html>