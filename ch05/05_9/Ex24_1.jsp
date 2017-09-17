<%@ page contentType="text/html;charset=big5"  %>
<html>
<head><title>Ex24_1</title></head><body>
<p align="left">
<font size="5"><b>Front Page of Ex24</b></font>
</p>
<%
  request.setCharacterEncoding("big5");

  pageContext.setAttribute("ex24", "pageContext¤º®e", 
                                            pageContext.SESSION_SCOPE);

  pageContext.forward("Ex24_2.jsp");
%>
</body>
</html>