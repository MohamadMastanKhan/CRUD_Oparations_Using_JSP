<%@ page language="java" import="java.sql.*" import="java.util.*" import="java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%try{
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	float sal=Float.parseFloat(request.getParameter("sal"));
	String des=request.getParameter("des");
	
	InputStream is =application.getResourceAsStream("/WEB-INF/db.properties");
	Properties p = new Properties();
    p.load(is);
    
    String driver=p.getProperty("driver");
    String url=p.getProperty("url");
    String user=p.getProperty("user");
    String pass=p.getProperty("pass");
    
    Class.forName(driver);
    Connection con=DriverManager.getConnection(url,user,pass);
    String sql="update employee set name=?,sal=?,desgnation=? where id=?";
    PreparedStatement pst=con.prepareStatement(sql);
    pst.setString(1,name);
    pst.setFloat(2,sal);
    pst.setString(3,des);
    pst.setInt(4,id);
    int n=pst.executeUpdate();
    if(n>0)
    {
    	out.print("data update successfully");
    }
    else
    {
    	out.print("Data update failed");
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