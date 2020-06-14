<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
<style type="text/css">
         .picture{
              height:100%;
              width:100%;
              background:url("images/1.jpg"); 
              position:absolute;
         }
       .login{
              height:700px;
              width:100%;
              font-size:18px;
              font-family:宋体;
              text-align:center;
              position:relative;
       }
</style>
</head>
<body>
      <form action="Login" class="login" method="get">
            <div class="picture">
                       <h4>学生成绩管理系统</h4>
                       请输入你的用户名：<input type="text" name="teaname"><br/>
                       请输入你的密码： <input type="password" name="pwd"><br/>
             <input type="submit" value="确定" >
             <input type="reset"  value="重置">
            </div>
      </form>

</body>
</html>