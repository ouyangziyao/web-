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
public class FormServlet extends HttpServlet  {
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public FormServlet()  
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
    	int cla = Integer.parseInt(request.getParameter("cla"));
    	List<Book> list = new ArrayList<Book>();
    	Statement stmt=null;
    	ResultSet rs=null;
    	
    	try {
        	Class.forName("com.mysql.jdbc.Driver");
        	String  url = "jdbc:mysql://localhost:3306/xinxi";
        	String userName = "root"; // 用户名
        	String userPwd = "YES"; // 密码
        	Connection conn = DriverManager.getConnection(url, userName, userPwd);
        	stmt = conn.createStatement();
        	String sql = "select * from grades where cla="+cla;
        	 rs = stmt.executeQuery(sql);
        	while (rs.next()) {
        		Book book = new Book();
        		book.setName(rs.getString("name"));
        		book.setNum(rs.getInt("num"));
        		book.setCla(rs.getInt("cla"));
        		book.setMath(rs.getInt("math"));
        		book.setJava(rs.getInt("java"));
        		book.setEnglish(rs.getInt("english"));
        		book.setSport(rs.getInt("sport"));
        		book.setCla(rs.getInt("cla"));
        		list.add(book);
			}
        	request.setAttribute("list", list);
		} catch (Exception e) {
			// TODO: handle exception
		}
        try {
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = DriverManager.getConnection(url, userName, userPwd);
            	stmt = conn.createStatement();
            	int avg_math=0;
            	String sql = "SELECT avg(math) as avg_math FROM grades where cla ="+cla;
            	rs = stmt.executeQuery(sql);
            	while (rs.next()) {
            		Book book = new Book();
            		book.setAvg_math(rs.getInt("avg_math"));
            		list.add(book);
    			}
    		} catch (Exception e) {
    			// TODO: handle exception
    		}
    		try {
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = DriverManager.getConnection(url, userName, userPwd);
            	stmt = conn.createStatement();
            	int avg_java=0;
            	String sql = "SELECT avg(java) as avg_java FROM grades where cla="+cla;
            	 rs = stmt.executeQuery(sql);
            	while (rs.next()) {
            		Book book = new Book();
            		book.setAvg_java(rs.getInt("avg_java"));
            		list.add(book);
    			}
            	
    		} catch (Exception e) {
    			// TODO: handle exception
    		}
    		try {
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = DriverManager.getConnection(url, userName, userPwd);
            	stmt = conn.createStatement();
            	int avg_english=0;
            	String sql = "SELECT avg(english) as avg_english FROM grades where cla="+cla;
            	 rs = stmt.executeQuery(sql);
            	while (rs.next()) {
            		Book book = new Book();
            		book.setAvg_english(rs.getInt("avg_english"));
            		list.add(book);
    			}
            	rs.close();
            	stmt.close();
            	conn.close();	
    		} catch (Exception e) {
    			// TODO: handle exception
    		}
    		try {
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = DriverManager.getConnection(url, userName, userPwd);
            	stmt = conn.createStatement();
            	int avg_sport=0;
            	String sql = "SELECT avg(sport) as avg_sport FROM grades where cla="+cla;
            	rs = stmt.executeQuery(sql);
            	while (rs.next()) {
            		Book book = new Book();
            		book.setAvg_sport(rs.getInt("avg_sport"));
            		list.add(book);
    			}
            	rs.close();
            	stmt.close();
            	conn.close();	
    		} catch (Exception e) {
    			// TODO: handle exception
    		}
    		try {
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = DriverManager.getConnection(url, userName, userPwd);
            	stmt = conn.createStatement();
            	int avg_total=0;
            	String sql = "SELECT avg((math+english+java+sport)/4) as avg_total FROM grades where cla="+cla;
            	rs = stmt.executeQuery(sql);
            	while (rs.next()) {
            		Book book = new Book();
            		book.setAvg_total(rs.getInt("avg_total"));
            		list.add(book);
    			}
            	rs.close();
            	stmt.close();
            	conn.close();	
    		} catch (Exception e) {
    			// TODO: handle exception
    		}
    		try {
            	Class.forName("com.mysql.jdbc.Driver");
            	String  url = "jdbc:mysql://localhost:3306/xinxi";
            	String userName = "root"; // 用户名
            	String userPwd = "YES"; // 密码
            	Connection conn = DriverManager.getConnection(url, userName, userPwd);
            	stmt = conn.createStatement();
            	int total=0;
            	String sql = "SELECT (math+english+java+sport) as total FROM grades where cla="+cla;
            	 rs = stmt.executeQuery(sql);
            	while (rs.next()) {
            		Book book = new Book();
            		book.setTotal(rs.getInt("total"));
            		list.add(book);
    			}
            	rs.close();
            	stmt.close();
            	conn.close();	
    		} catch (Exception e) {
    			// TODO: handle exception
    		}
    		request.setAttribute("list", list);
    	request.getRequestDispatcher("baobiao1.jsp").forward(request, response);
    }        
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}