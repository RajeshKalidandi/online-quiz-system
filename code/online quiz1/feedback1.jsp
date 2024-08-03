<%@ page import="java.sql.*,databaseconnection.*"%>

<%
	
		String rollno=request.getParameter("rollno");
		String email=request.getParameter("email");
		String qot=request.getParameter("qot");
		String dot=request.getParameter("dot");
		String comment=request.getParameter("comment");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
	Statement st=con.createStatement();
		int i=st.executeUpdate("insert into feed values('"+rollno+"','"+email+"','"+qot+"','"+dot+"','"+comment+"')");
		if(i!=0)
		{
		response.sendRedirect("feedback.jsp?msg=sucess");
		}
		else
		{
		response.sendRedirect("feedback.jsp?msg=failure");
		}
		}
		catch(Exception e)
		{
		out.println(e);
		}
%>