<%@ page contentType="text/html;charset=big5" %>
<html>
<head><title>Ex24_1</title></head><body>
<p align="left">
<font size="5"><b>Sub Page of Ex24</b></font>
</p>
<%
  request.setCharacterEncoding("big5");

  Object info= pageContext.getAttribute("ex24", pageContext.SESSION_SCOPE);
  String infoStr= (String)info;
%>
  pageContext_ex24資訊內容為： <%= infoStr %>
</body>
</html>