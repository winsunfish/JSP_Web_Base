<%@ page contentType="text/html; charset=big5" %>
<html>
<head><title>Ex18</title></head>
<body> 
<%
 String encod, type;

 response.setCharacterEncoding("big5");

 encod= response.getCharacterEncoding();
 out.print("�������^���T���s�X��: " + encod + "<br>");

 type= response.getContentType();
 out.print("�������^�����榡��: " + type + "<br>");
%>
</body>
</html>