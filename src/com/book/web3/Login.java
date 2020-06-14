package com.book.web3;

import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Login extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public Login()  
    {  
        super();  
    }  
      
    /** 
     * 初始化 
     */  
    public void init() throws ServletException  
    {}  
      
    /** 
     * doGet()方法 
     */  
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  
    {  
        doPost(request, response);  
    }  
      
    /** 
     * doPost()方法 
     */  
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {  
    	 PrintWriter out = response.getWriter();
         try {  
        	    boolean flag=false;
        		String teaname1=request.getParameter("teaname");
        		String pwd1=request.getParameter("pwd");
        		if(teaname1==null||pwd1==null||teaname1.equals("")||pwd1.equals(""))//得保证都有数据？？？
        			    {
        			        out.write("请正确登陆系统");
        			    }
        			    else
        			    {
        			    	
        			    }
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = null;
                PreparedStatement pstt = null;
                ResultSet rs = null;
                String sql = "select * from teazhangmi where teaname=?";
            	conn = DriverManager.getConnection(url, userName, userPwd);
            	pstt=conn.prepareStatement(sql);
            	pstt.setString(1,teaname1);
            	rs=pstt.executeQuery();
                while(rs.next()){
                	String a=rs.getString("pwd");
                	if(pwd1.equals(a)) {
                		flag=true;
                	}else {
                		flag=false;
                	}	
                }
                if(flag==true){
                  	response.sendRedirect("main.jsp");
                  }else{
                  	response.sendRedirect("login.jsp");
                  }
            	rs.close();
            	pstt.close();
            	conn.close();	
         }catch (Exception e) { 
          //e.printStackTrace(); 
          } 
    }        
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}  
