<%@ page contentType="text/html;charset=big5" %>
<html>
<head><title>Ex30</title></head><body>
<%
  request.setCharacterEncoding("big5");
  String val = request.getParameter("course");
  out.print("�̳��w���ҥءG " + val );
%>
</body>
</html>