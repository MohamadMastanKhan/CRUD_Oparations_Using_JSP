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
    String sql="insert into employee values(?,?,?,?)";
    PreparedStatement pst=con.prepareStatement(sql);
    pst.setInt(1,id);
    pst.setString(2,name);
    pst.setFloat(3,sal);
    pst.setString(4,des);
    int n=pst.executeUpdate();
    if(n>0)
    {
    	out.print("data insert done");
    }
    else
    {
    	out.print("failed");
    }
}
catch(Exception e)
{
	
}
%>

</body>
</html>