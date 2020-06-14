<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.book.web3.Book"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>成绩显示页面</title>	
<style type="text/css"	>
.picture{
   height:700px;
   width:100%;
   margin:0;
   background:url(images/9.jpg)
}
</style>
</head>
<body>
 
 <div class="picture">
<table id="table1" align="center" border="1" width="50%" cellpadding="6">  
	<tr>
		<th colspan="7" align="center" >查询到的学生成绩信息</th><%--th加粗， cellpadding和android padding含义一样--%>
	</tr>
	<tr>
		<th align="center" >名字</th> 
		<th align="center" >学号</th> 
		<th align="center" >数学</th>
		<th align="center" >Java</th>
		<th align="center" >英语</th>
		<th align="center" >体育</th>
		<th align="center" >班级</th>
	</tr>
	<%
	//获取图书信息集合
	List<Book> list = (List<Book>)request.getAttribute("list");
	if(list == null || list.size() < 1){
		out.print("不存在");
	}else{
		for(Book book:list){				
	%>	
		<tr align="center">
			<td> <%= book.getName() %></td>
			<td> <%= book.getNum() %></td>
			<td> <%= book.getMath() %></td>
			<td> <%= book.getJava() %></td>
			<td> <%= book.getEnglish() %></td>
			<td> <%= book.getSport() %></td>
			<td> <%= book.getCla() %></td>
		</tr>
		
	<%	
		}
	}
	%>
</table>
 </div>
</body>
</html>
