<%@ page import="java.sql.*,databaseconnection.*"%>

<%
	int count=0;
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(username.equals("admin")&&password.equals("admin"))
	{
	response.sendRedirect("admin.jsp");
	session.setAttribute("username",username);
	}
	else
	{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from sregister where email='"+username+"' and pass='"+password+"'");
	if(rs.next())
	{
	count=rs.getInt(1);
	}
	if(count==0)
	{
	response.sendRedirect("login.jsp?msg=Incorect User Name Or Password");
	}
	else
	{
	response.sendRedirect("user.jsp");
	session.setAttribute("username",username);
	}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
	}


%>