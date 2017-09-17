<%@ page contentType="text/html;charset=big5" %>
<html>
<head><title>Ex58Marq</title></head><body>
<p align="center">
<font size="5"><b>Sub Page of Ex58Marq</b></font>
</p>
<%
  request.setCharacterEncoding("big5");
  String dataStr = request.getParameter("data");
 %>
<b><font color="#FF0000"><marquee scrolldelay="120" loop="5" bgcolor="#00FFFF"><%= dataStr%>бу</marquee></font></b>

</body>
</html>