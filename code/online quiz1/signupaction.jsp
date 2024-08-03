<%@ page import="java.sql.*,databaseconnection.*"%>
<%

String a=request.getParameter("uname");
String b=request.getParameter("mail");
String c=request.getParameter("password");
String d=request.getParameter("password");

String date=request.getParameter("date");
String month=request.getParameter("month");
String year=request.getParameter("year");
String e=date+"/"+month+"/"+year;

//String f=request.getParameter("id");
String f=request.getParameter("gender");
String g=request.getParameter("pho");
String h=request.getParameter("address");

String i=request.getParameter("addr");
String j=request.getParameter("city");
String k=request.getParameter("state");
String l=request.getParameter("pin");
String n=request.getParameter("java");
String o=request.getParameter("c++");
String p=request.getParameter("c");
String q=request.getParameter("html");
String r=n+","+o+","+p+","+q;

try
{

Connection conn = databasecon.getconnection();
PreparedStatement psmt1=null;
psmt1=conn.prepareStatement("insert into sregister values(?,?,?,?,?,?,?,?,?,?,?,?,?)");


psmt1.setString(1,a);
psmt1.setString(2,b);
psmt1.setString(3,c);
psmt1.setString(4,d);
psmt1.setString(5,e);
psmt1.setString(6,f);
psmt1.setString(7,g);
psmt1.setString(8,h);
psmt1.setString(9,i);
psmt1.setString(10,j);
psmt1.setString(11,k);
psmt1.setString(12,l);
psmt1.setString(13,r);



psmt1.executeUpdate();


response.sendRedirect("signup.jsp?message=success");


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>