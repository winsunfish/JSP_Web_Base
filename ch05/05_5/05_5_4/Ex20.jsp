<%@ page contentType="text/html; charset=big5" %>
<html>
<head><title>Ex20</title></head>
<body> 
<% 
 int bufSize;

 bufSize= response.getBufferSize();
 out.print("���ҹw�]BufferSize��: " + bufSize + "bytes<br>");

 bufSize= 16*1024;
 response.setBufferSize(bufSize);
 bufSize= response.getBufferSize();
 out.print("�s�]�wBufferSize��: " + bufSize + "bytes<p>");

 response.flushBuffer();
 boolean b= response.isCommitted();
 out.print("����Buffer�O�_�w����flush: " + b);
%>
</body>
</html>