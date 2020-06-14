package com.book.web3;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdataGrades extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public UpdataGrades()  
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
    	      int cla = Integer.parseInt(request.getParameter("class"));
    	      int math = Integer.parseInt(request.getParameter("math"));
    	      int java = Integer.parseInt(request.getParameter("java"));
    	      int english = Integer.parseInt(request.getParameter("English"));
    	      int sport = Integer.parseInt(request.getParameter("sport"));
        	Class.forName("com.mysql.jdbc.Driver");
        	String  url = "jdbc:mysql://localhost:3306/xinxi";
        	String userName = "root"; // 用户名
        	String userPwd = "YES"; // 密码
        	Connection conn = DriverManager.getConnection(url, userName, userPwd);
        	String sql = "update grades set name =?,num=?,math=?,java=?,english=?,sport=?,cla=? where grades.num="+num1+";";
        	PreparedStatement ps = conn.prepareStatement(sql);
        	ps.setString(1,name1);
        	ps.setInt(2, num1);
        	ps.setInt(3, math);
        	ps.setInt(4,java);
        	ps.setInt(5, english);
        	ps.setInt(6, sport);
        	ps.setInt(7,cla);
        	ps.executeUpdate();
        	ps.close();
        	conn.close();
        	
		} catch (Exception e) {
			// TODO: handle exception
		}
    	request.getRequestDispatcher("numchazhaogrades.jsp").forward(request, response);
    }  
      
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}  
