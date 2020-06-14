package com.book.web3;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class GradesPicture extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public GradesPicture()  
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
        	Statement stmt = conn.createStatement();
        	String sql = "select * from grades where grades.num="+num1+";";
        	ResultSet rs = stmt.executeQuery(sql);
        	List<Book> list = new ArrayList<Book>();
        	while (rs.next()) {
        		Book book = new Book();
        		book.setName(rs.getString("name"));
        		book.setNum(rs.getInt("num"));
        		book.setMath(rs.getInt("math"));
        		book.setJava(rs.getInt("java"));
        		book.setEnglish(rs.getInt("english"));
        		book.setSport(rs.getInt("sport"));
        		book.setCla(rs.getInt("cla")); 
        		list.add(book);
			}
        	request.setAttribute("list", list);
        	rs.close();
        	stmt.close();
        	conn.close();	
		} catch (Exception e) {
			// TODO: handle exception
		}
    	request.getRequestDispatcher("gradespicture1.jsp").forward(request, response);
    }        
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}