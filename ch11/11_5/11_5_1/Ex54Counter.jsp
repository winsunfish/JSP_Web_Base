<%@ page contentType="text/html; charset=Big5" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>Ex54Counter</title></head><body>
<p align="left">
<font size="5"><b>Sub Page of Ex54Counter</b></font>
</p>
<%
request.setCharacterEncoding("big5");

String fName = request.getRealPath("/Visitor.txt");

//Ū���ɮפ����x�s�����X�H��--------------------------------------------
BufferedReader br = new BufferedReader(new FileReader(fName));
String numStr = br.readLine();
br.close(); 

//�N���X�H���[1�A�x�s�J�ɮ�--------------------------------------------
if (session.isNew()) {
   int numInt = Integer.parseInt(numStr) + 1;
   numStr = String.valueOf(numInt);
   BufferedWriter bw = new BufferedWriter(new FileWriter(fName));
   bw.write(String.valueOf(numStr));
   bw.close();
}

//�ϥιϧμƦr�L�X���X�H��--------------------------------------
out.print("���������X�H���G " + "<br>");
for(int i = 0; i < numStr.length(); i++)  {
    %>
    <img src = "./images/<%= numStr.charAt(i) %>.gif"></img>
    <%
}
%>
</body>
</html>
