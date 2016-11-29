<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板页面</title>
</head>
<body bgcolor="CCCFFF">
    <center>
        <form action="AddMessageServlet" method="post">
            留言者：<input type="text" name="author" size="30">
            <br>
            留言标题：<input type="text" name="title" size="30">
            <br>
            留言内容：<textarea rows="10" cols="30" name="content"></textarea>
            <p>
            <input type="submit" value="提交">
            <input type="reset" value="取消">
            <a href="showMessage.jsp">查看留言</a>
        </form>
    </center>
</body>

</html>