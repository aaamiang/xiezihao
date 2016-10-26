8<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
      import="java.sql.*,java.io.*" %>

<html>
<body>
<%
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";

 Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
 Statement stmt=conn.createStatement();
 ResultSet rs=stmt.executeQuery("select * from student");
 
 
 out.println("<table>");
 while(rs.next()){
	 out.println("<tr>");
	 out.println("<td>"+rs.getInt("id")+"</td>");
	 out.println("<td>"+rs.getString("name")+"</td>");
	 out.println("<td>"+rs.getInt("age")+"</td>");
	 out.println("<td>"+rs.getString("major")+"</td>");
	 out.println("</tr>");
	 	 
 }

out.println("</table>");

%>

<h1>按照年龄查询:</h1>
<%
   int age=Integer.parseInt(request.getParameter("age"));
  
String sql="delete from table_name where age = ?";
PreparedStatement st=conn.prepareStatement(sql);
st.setInt(1,age);
rs = st.executeQuery();

out.println("<table>");
while(rs.next()){
		 out.println("<tr>");
		 out.println("<td>"+rs.getInt("id")+"</td>");
		 out.println("<td>"+rs.getString("name")+"</td>");
		 out.println("<td>"+rs.getInt("age")+"</td>");
		 out.println("<td>"+rs.getString("major")+"</td>");
		 out.println("</tr>");
		 	 
	 }

	out.println("</table>");


rs.close();
stmt.close();
conn.close();

%>


</body>
</html>