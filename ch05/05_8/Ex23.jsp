<%@ page contentType="text/html; charset=big5" 
    import="java.util.*" %>
<html>
<head><title>Ex23</title></head><body>
<%
  String name;

  Enumeration en = config.getInitParameterNames();
  while (en.hasMoreElements()) {
    name = (String)en.nextElement();
    out.println("config��l�Ѽ� "  + name + 
	    " : " + config.getInitParameter(name) + "<br>");
  }

  name = config.getServletName();
  out.println("Servlet�W��: " + name);
%>
</body>
</html>
