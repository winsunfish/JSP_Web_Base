<%@ page contentType= "text/html;charset=big5" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>Ex37</title></head><body>
<%
  request.setCharacterEncoding("big5");
   String val_fil = request.getParameter("fil");
   String val_filedata = request.getParameter("filedata");
   BufferedWriter fout = new BufferedWriter(new FileWriter(val_fil));

  fout.write(val_filedata);
  fout.newLine();
  fout.close();

  out.print("�w���\�N��Ƽg�J�ɮ�");
%>
</body>
</html>