<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除 学号输入页面</title>
<style type="text/css">
*{
   margin:0;
   padding:0;
}
.yang{
     height:700px;
     width:100%;
     text-align:center;
}
.picture{
     background-size:100%;
     height:700px;
     margin:0;
     background:url(images/11.jpg);
}
.font{
    line-height:30px;
}
</style>
</head>
<body>
     <div class="yang">
     <div class="picture">
     <div class="font">
     <form action="DeleteStudent" method="get">
           请输入您想删除学生基本信息的学号：<input type="text" name="num"><br/>
           <input type="submit" value="提交">
           <input type="button" value="返回" onclick="fanhui()"><br/>
           <hr>
     </form>
      <form action="DeleteGrades" method="get" style="margin:200px">
           请输入您想删除学生成绩的学号：<input type="text" name="num"><br/>
           <input type="submit" value="提交">
           <input type="button" value="返回" onclick="fanhui()"><br/>
           <hr>
     </form>
     </div>
     </div>
     </div>
     <script type="text/javascript">
   function fanhui(){
	   window.location.href="main.jsp";
   }
   </script> 
</body>
</html>