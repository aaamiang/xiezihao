<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.sccc.opp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>来个小测试</title>
</head>
<body>
<%  opp c=(opp)session.getAttribute("rpp");
     String phone =request.getParameter("phone");
     int n=c.getn();
     int a=c.geta();
     if(phone.equals("0")){
    	 n=n+10;
     }else if(phone.equals("1")){
    	 n=n+30; 
     }else if(phone.equals("2")){
    	 a=a+20; 
     }else{
    	 a=a+10;
    	 n=n+10;
     }
     c.setn(n);
     c.seta(a);
     if(c.getn()<20){
    	 out.print("你是不是傻");	 
     }else{
    	 out.print("你变了，不在那么爱我了");
    	 if(c.geta()>30){
    		out.print("小子你有一套嘛！"); 
    	 }
    	 out.print("<p><a href='kpp.jsp'>继续测试</a></p>");
     }
     if(c.geta()>100){
    	 out.print("看来你是真的爱上她了");
     }
   %>
</body>
</html>