<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>插入查询后页面</title>
<style type="text/css">
.picture{
       background:url(images/4.jpg);
}
</style>
</head>
<body>
      <%!
      int num=2020010101;
      %>
      <% 
      String name=request.getParameter("name");
      String sex=request.getParameter("sex");
      String bir=request.getParameter("bir");
      int cla = Integer.parseInt(request.getParameter("cla"));
      num++;
      /** 连接数据库参数 **/ 
      try{
    	  String driverName = "com.mysql.jdbc.Driver"; //驱动名称 
      String DBUser = "root"; //mysql用户名 
      String DBPasswd = "YES"; //mysql密码 
      String DBName = "xinxi"; //数据库名 

      String connUrl = "jdbc:mysql://localhost/" + DBName + "?user=" + DBUser + "&password=" + DBPasswd; 
      Class.forName(driverName).newInstance(); 
      Connection conn = DriverManager.getConnection(connUrl);
      if(conn != null){  
          out.print("数据库连接成功！");  
          out.print("<br />"); 
      Statement stmt=null;
      stmt = conn.createStatement(); 
      //stmt.executeQuery("SET NAMES UTF8"); 
      String insert_sql = "INSERT INTO student VALUES('" + name + "','" + sex + "','" + bir + "'," + num +","+cla+ ")"; 
      String query_sql = "SELECT * FROM student"; 
       try { 
      stmt.executeUpdate(insert_sql); 
      }catch(Exception e) { 
      //e.printStackTrace();
      out.println("插入错误");
      }  
      ResultSet rs = stmt.executeQuery(query_sql); 
      while(rs.next()){ %> 
      <div class="picture" style="text-align:center">
      姓名：<%=rs.getString("name")%> <br/> 
      性别：<%=rs.getString("sex")%> <br/> 
      出生年月：<%=rs.getString("bir")%> <br/> 
      学号：<%=rs.getString("num")%> <br/> 
      班级：<%=rs.getString("cla")%><br/>
      </div> 
     <% }
      }else{
    	  out.print("连接失败！");
      }      
      //rs.close();  
     //tmt.close(); 
      conn.close();
      }
      catch (Exception e) { 
      //e.printStackTrace(); 
      out.print("数据库连接异常！");
      } 
   %>   
</body>
</html>