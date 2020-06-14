<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
    
    <% request.setCharacterEncoding("UTF-8"); %>  
<jsp:useBean id="book" class="com.book.web3.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String  url = "jdbc:mysql://localhost:3306/xinxi";
	String userName = "root"; // 用户名
	String userPwd = "YES"; // 密码
	Connection conn = DriverManager.getConnection(url, userName, userPwd);
	String sql = "insert into grades(name,num,math,java,english,sport,cla)values(?,?,?,?,?,?,?)";
	
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, book.getName());
	ps.setInt(2, book.getNum());
	ps.setInt(3, book.getMath());
	ps.setInt(4, book.getJava());
	ps.setInt(5, book.getEnglish());
	ps.setInt(6, book.getSport());
	ps.setInt(7, book.getCla());
	
	ps.executeUpdate();
	ps.close();
	conn.close();
}catch(Exception e){
	out.print("成绩添加失败 " + e.toString());
}

request.getRequestDispatcher("numchazhaogrades.jsp").forward(request, response);
%>
</body>
</html>
