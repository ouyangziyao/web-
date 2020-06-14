package com.book.web3;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdataStudent extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public UpdataStudent()  
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
    	try {
    		String name1=request.getParameter("name");
    	      int num1 = Integer.parseInt(request.getParameter("num"));
    	      String sex1=request.getParameter("sex");
    	      String bir1=request.getParameter("bir");
    	      int cla1=Integer.parseInt(request.getParameter("class"));
        	Class.forName("com.mysql.jdbc.Driver");
        	String  url = "jdbc:mysql://localhost:3306/xinxi";
        	String userName = "root"; // 用户名
        	String userPwd = "YES"; // 密码
        	Connection conn = DriverManager.getConnection(url, userName, userPwd);
        	String sql = "update student set name =?,sex=?,bir=?,num=?,cla=? where student.num="+num1+";";
        	PreparedStatement ps = conn.prepareStatement(sql);
        	ps.setString(1,name1);
        	ps.setString(2, sex1);
        	ps.setString(3, bir1);
        	ps.setInt(4,num1);
        	ps.setInt(5, cla1);
        	ps.executeUpdate();
        	ps.close();
        	conn.close();
        	
		} catch (Exception e) {
			// TODO: handle exception
		}
    	request.getRequestDispatcher("numchastudent.jsp").forward(request, response);
    }  
      
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}  
