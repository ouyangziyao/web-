<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
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
     margin:0;
     height:700px;
     background:url(images/6.jpg);
}
.font{
     margin:80px;
     line-height:25px;
    
}
a{
   text-decoration:none;
}
</style>
</head>
<style type="text/css">
</style>
<body>
      <div class="yang">
          <div class="picture">
          <h2>首页</h2>
            <div class="font">
            <p>欢迎您！请点击下列超链接来进行你需要的操作！</p>
            <ul style="list-style-type:none">
            <li><a href="tianjiaxinxi.jsp">添加学生信息</a></li>
            <li><a href="numchazhaogrades.jsp">学号查找成绩</a></li>
            <li><a href="namechazhaogrades.jsp">根据姓名查找成绩</a></li>
            <li><a href="updataxinxi.jsp">根据学号修改学生信息</a></li>
            <li><a href="deletexinxi.jsp">根据学号删除学生信息</a></li>
            <li><a href="namechazhaostudent.jsp">根据名字查找学生基本信息</a></li>
            <li><a href="numchastudent.jsp">根据学号查找学生基本信息</a></li>
            <li><a href="gradespicture.jsp">成绩柱形图</a></li>
            <li><a href="baobiao.jsp">导出成绩到Excel</a></li>
            </ul>
            </div></div>
       </div>
</body>
</html>