<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新输入页面</title>
<style type="text/css">
.yang{
     text-align:center;
     line-height:30px;
}
.picture{
   height:700px;
   width:100%;
   background:url(images/1.jpg)
}
</style>
</head>
<body>
     <div class="yang">
     <div class="picture">
     <form action="UpdataStudent" method="get">
           更改学生基本信息<br/>
             请输入姓名：<input type="text" name="name" ><br/>
             请输入学号：<input type="text" name="num"><br/>
             请输入性别：<input type="text" name="sex" ><br/>
             请输入出生年月日：<input type="text" name="bir"><br/>
             请输入班级：<input type="text" name="class"><br/>
           <input type="submit" value="提交">
           <input type="button" value="返回" onclick="fanhui()"><br/>
           <hr>
     </form>
     <form action="UpdataGrades" method="get">
           更改学生成绩<br/>
           请输入姓名：<input type="text" name="name" ><br/>
             请输入学号：<input type="text" name="num" ><br/>
             请输入班级：<input type="text" name="class"><br/>
             请输入数学成绩：<input type="text" name="math"><br/>
             请输入Java成绩：<input type="text" name="java"><br/>
             请输入英语成绩：<input type="text" name="English"><br/>
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