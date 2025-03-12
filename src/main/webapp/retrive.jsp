<%@ page language="java" import="java.sql.*" import="java.io.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%try{
	
	InputStream is =application.getResourceAsStream("/WEB-INF/db.properties");
	Properties p = new Properties();
    p.load(is);
    
    String driver=p.getProperty("driver");
    String url=p.getProperty("url");
    String user=p.getProperty("user");
    String pass=p.getProperty("pass");
    
    Class.forName(driver);
    Connection con=DriverManager.getConnection(url,user,pass);
    String sql="select * from employee";
    PreparedStatement pst=con.prepareStatement(sql);
    ResultSet rs=pst.executeQuery();
    	out.println("<table border='1'>");
        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getInt(1)+ "</td>");
            out.println("<td>" + rs.getString(2) + "</td>");
            out.println("<td>" + rs.getFloat(3) + "</td>");
            out.println("<td>" + rs.getString(4) + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");
}

    catch(Exception e)
    {
    	e.printStackTrace();
    	out.print("data retrive failed");
    } 
%>
<br>
<br>
<a href="index.html">BACK</a>
</body>
</html>