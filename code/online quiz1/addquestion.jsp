<%@ page import="java.sql.*,databaseconnection.*"%>
<%
Statement st = null;
ResultSet rs = null;
String a=request.getParameter("qid");
String b=request.getParameter("subject");
String c=request.getParameter("quesn");

String d=request.getParameter("opt1");
String e=request.getParameter("opt2");
String f=request.getParameter("opt3");
String g=request.getParameter("opt4");
String h=request.getParameter("ans");
System.out.println(h);
try
{


Connection con = databasecon.getconnection();
PreparedStatement psmt1=null;
psmt1=con.prepareStatement("insert into questions values(?,?,?,?,?,?,?,?)");
System.out.println("Done");

psmt1.setString(1,a);
psmt1.setString(2,b);
psmt1.setString(3,c);
psmt1.setString(4,d);
psmt1.setString(5,e);
psmt1.setString(6,f);
psmt1.setString(7,g);
psmt1.setString(8,h);
psmt1.executeUpdate();	
	
response.sendRedirect("admin.jsp");	

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}


%>