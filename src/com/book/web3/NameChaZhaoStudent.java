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
public class NameChaZhaoStudent extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public NameChaZhaoStudent()  
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
        	Class.forName("com.mysql.jdbc.Driver");
        	String  url = "jdbc:mysql://localhost:3306/xinxi";
        	String userName = "root"; // 用户名
        	String userPwd = "YES"; // 密码
        	Connection conn = DriverManager.getConnection(url, userName, userPwd);
        	Statement stmt = conn.createStatement();
        	String sql = "select * from student where student.name='"+name1+"';";
        	ResultSet rs = stmt.executeQuery(sql);
        	
        	List<Book> list = new ArrayList<Book>();
        	while (rs.next()) {
        		Book book = new Book();
        		book.setName(rs.getString("name"));
        		book.setSex(rs.getString("sex"));
        		book.setBir(rs.getString("bir"));
        		book.setNum(rs.getInt("num"));
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
    	request.getRequestDispatcher("namechazhaostudent1.jsp").forward(request, response);
    }
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}  
