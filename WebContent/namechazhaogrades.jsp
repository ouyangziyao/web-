<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>姓名查找页面</title>
<style type="text/css">
.yang{
      height:700px;
      width:100%;
      text-align:center;
      
}
.picture{
       height:700px;
       width:100%;
       background:url(images/5.jpg);
}
.font{
      line-height:30px;
}
</style>
</head>
<body>
      <div class="yang">
      <div class="picture">
      <form action="NameChaZhao" method="get">
      请输入您要查找学生的名字：<br/>
      <input type="text" name="name"><br/>
      <input type="submit" value="提交">
      <input type="button" value="返回" onclick="fanhui()">
      </form>
      <hr>
      <form action="NameChaZhao1" method="get" style="margin:200px">
      请输入您要查找学生的名字：(此为模糊查找)<br/>
      <input type="text" name="name1"><br/>
      <input type="submit" value="提交">
      <input type="button" value="返回" onclick="fanhui()">
      </form>
      </div>
      </div>
      <script>
      function fanhui(){
    	  window.location.href="main.jsp";
      }
      </script>
</body>
</html>