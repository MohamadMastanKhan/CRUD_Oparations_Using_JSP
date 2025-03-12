<%@ page language="java" import="java.sql.*" import="java.io.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
try{
	int id=Integer.parseInt(request.getParameter("id"));
	
	InputStream is =application.getResourceAsStream("/WEB-INF/db.properties");
	Properties p = new Properties();
    p.load(is);
    
    String driver=p.getProperty("driver");
    String url=p.getProperty("url");
    String user=p.getProperty("user");
    String pass=p.getProperty("pass");
    
    Class.forName(driver);
    Connection con=DriverManager.getConnection(url,user,pass);
    String sql="delete from employee where id=?";
    PreparedStatement pst=con.prepareStatement(sql);
    pst.setInt(1,id);
    int n=pst.executeUpdate();
    if(n>0)
    {
    	out.print("Delete row Successfully");
    }
    else
    {
    	out.print("Delete Failed");
    }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
<br>
<br>
<a href="index.html">BACK</a>
</body>
</html>