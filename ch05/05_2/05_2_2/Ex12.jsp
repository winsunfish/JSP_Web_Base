<%@ page contentType="text/html; charset=big5" %>
<html>
<head><title>Ex12</title></head>
<body> 
<% 
 int bufSize, remSize;

 bufSize= out.getBufferSize();
 out.print("���ҹw�]BufferSize��: " + bufSize + "bytes<br>");

 remSize= out.getRemaining();
 out.print("�ثeBufferSize�|�l: " + remSize + "bytes<p>");

 out.clear();
 remSize= out.getRemaining();
 out.print("�g�Lclear�ثeBufferSize�|�l: " + remSize + "bytes<p>");
%>
</body>
</html>