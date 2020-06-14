package com.book.web3;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class DeleteStudent extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public DeleteStudent()  
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
    	      int num1 = Integer.parseInt(request.getParameter("num"));
    	     Class.forName("com.mysql.jdbc.Driver");
        	String  url = "jdbc:mysql://localhost:3306/xinxi";
        	String userName = "root"; // 用户名
        	String userPwd = "YES"; // 密码
        	Connection conn = DriverManager.getConnection(url, userName, userPwd);
        	Statement stmt=null;
        	stmt = conn.createStatement();
        	String sql = "delete from student where student.num="+num1+";";
        	stmt.executeUpdate(sql);
      
        	stmt.close();
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
