<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学号查找页面</title>
<style type="text/css">
*{
   margin:0;
   padding:0;
}
.picture{
        width:100%;
        height:100%;
       background:url(images/6.jpg);
       position:relative;
}
.yang{ 
       height:700px;
       width:100%;
       font-size:18px;
       text-align:center;
	   position:absolute;
  
}
</style>
</head>
<body>
      <form action="NumChaStudent" method="get" class="yang">
      <div class="picture">
      
                      请输入您要查找学生的学号：<br>
            <input type="text" name="num">
            <input type="submit" value="确定">
            <input type="button" value="返回" onclick="fanhui()">
      </div>
      </form>
      <script>
         function fanhui(){
        	 window.location.href="main.jsp"
         }
      </script>
</body>
</html>