<%@ page contentType="text/html;charset=big5" %>
<html>
<head><title>Ex15</title></head><body>
<%
  String ClientAddr = request.getRemoteAddr();
  out.print("ClientAddressĄG " + ClientAddr);
%>
</body>
</html>