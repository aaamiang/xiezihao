<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>妹子来事了</title>
</head>
<body>
<jsp:useBean id="d" class="com.sccc.kpp" scope="session"/>
<form action="lpp.jsp" method="post">
<%
String test=d.getzt().get(0);
ArrayList<String> xz=d.gettm().get(test);
out.print("<h1>"+test+"回答</h1>");
for(int i=0;i<4;i++){
	String neiRong=xz.get(i);
	String num = String.valueOf(i);
	out.print("<p><input type='radio' name='phone' value='+"
			+ num +"'>"+neiRong+"</input></p>");
	
}
%>
<button>提交</button>
</form>
</body>
</html>