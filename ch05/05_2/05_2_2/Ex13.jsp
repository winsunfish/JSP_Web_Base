<%@ page contentType="text/html; charset=big5" %>
<html>
<head><title>Ex13</title></head>
<body> 
<% 
 int bufSize, remSize;

 bufSize= out.getBufferSize();
 out.print("���ҹw�]BufferSize��: " + bufSize + "bytes<br>");

 remSize= out.getRemaining();
 out.print("�ثeBufferSize�|�l: " + remSize + "bytes<p>");

 out.flush();
 remSize= out.getRemaining();
 out.print("�g�Lflush�ثeBufferSize�|�l: " + remSize + "bytes<p>");

 boolean b= out.isAutoFlush();
 out.print("����Buffer�O�_�i����flush: " + b);
%>
</body>
</html>