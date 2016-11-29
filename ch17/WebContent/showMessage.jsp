<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sccc.MessageBean" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示留言信息</title>
</head>
<body bgcolor="CCCFFF">
    <center>
        <%
            ArrayList wordlist = (ArrayList)application.getAttribute("wordlist");
            if(wordlist==null||wordlist.size() == 0)
            	out.print("no message!");
            else {
            	for(int i = wordlist.size()-1; i >= 0; i--){
            		MessageBean message = (MessageBean) wordlist.get(i);
        %>
        <p>author:<%=message.getAuthor() %></p>
        <p>time:<%=message.getTime() %></p>
        <p>title:<%=message.getTitle() %></p>
        <p>
            content:
            <textarea rows="10" cols="30" readonly><%=message.getContent() %></textarea>
        </p>
        <a href="messageBoard.jsp">我要留言</a>
        <%
            	}
            }
        %>
    </center>
</body>
</html>
