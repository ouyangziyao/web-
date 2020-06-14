<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.book.web3.Book"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
<style type="text/css"	>
.picture{
   height:700px;
   width:100%;
   margin:0;
   background:url(images/3.jpg)
}
</style>		
</head>
<body>
 <div class="picture">
 
<table id="table1" align="center" border="1" width="50%" cellpadding="6">  
	<tr>
		<th colspan="5" align="center" >查询到的学生成绩信息</th><%--th加粗， cellpadding和android padding含义一样--%>
	</tr>
	<tr>
		<th align="center" >名字</th> 
		<th align="center" >性别</th> 
		<th align="center" >出生年月</th>
		<th align="center" >学号</th>
		<th align="center" >班级</th>
	</tr>
	<%
	//获取图书信息集合
	List<Book> list = (List<Book>)request.getAttribute("list");
	if(list == null || list.size() < 1){
		out.print("不存在 ");
	}else{
		for(Book book:list){				
	%>	
		<tr align="center">
			<td> <%= book.getName() %></td>
			<td> <%= book.getSex() %></td>
			<td> <%= book.getBir() %></td>
			<td> <%= book.getNum() %></td>
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
