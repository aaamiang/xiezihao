<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示女朋友页面</title>
<jsp:useBean id="rpp" class="com.sccc.opp" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="rpp"/>
</head>
<body>
<p>nv的yz:<jsp:getProperty name="rpp" property="yz"/>分</p>
<p>nv的tz:<jsp:getProperty name="rpp" property="tz"/>kg</p>
<p>nv的sg:<jsp:getProperty name="rpp" property="sg"/>cm</p>
<p>nv的n:<jsp:getProperty name="rpp" property="n"/></p>
<p>nv的a:<jsp:getProperty name="rpp" property="a"/></p>
<p><a href="lpp.jsp">给朕退下</a></p>
</body>
</html>