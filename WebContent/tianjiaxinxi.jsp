<%@ page language="java" import="java.sql.*,java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加学生基本信息页面</title>
<style type="text/css">
.picture{
      height:700px;
      width:100%;
      background:url(images/3.jpg);
      position:relative;
}
.yang{
     
      text-align:center;
      line-height:30px;
      
}
</style>
</head>
<body>
   <div class="yang">
   <div class="picture">
   <form action="tianjiastudents.jsp" method="get">
             请输入要添加学生基本信息：<br/>
             请输入姓名：<input type="text" name="name" ><br/>
             请输入性别：<input type="text" name="sex" ><br/>
             请输入出生年月日：<input type="text" name="bir"><br/>
             请输入班级：<input type="text" name="cla"><br/>
             <input type="submit" value="提交">
             <input type="button" value="返回" onclick="fanhui()">
   </form>
   <form action="tianjiagrades.jsp" method="get">
             请输入要添加学生成绩信息：<br/>
             请输入姓名：<input type="text" name="name" ><br/>
             请输入学号：<input type="text" name="num" ><br/>
             请输入班级：<input type="text" name="cla"><br/>
             请输入数学成绩：<input type="text" name="math"><br/>
             请输入Java成绩：<input type="text" name="java"><br/>
             请输入英语成绩：<input type="text" name="english"><br/>
             请输入体育成绩：<input type="text" name="sport"><br/>
             <input type="submit" value="提交">
             <input type="button" value="返回" onclick="fanhui()">
   </form>
   </div>
   </div>
   <script type="text/javascript">
   function fanhui(){
	   window.location.href="main.jsp";
   }
   </script> 
   </body>
   </html>