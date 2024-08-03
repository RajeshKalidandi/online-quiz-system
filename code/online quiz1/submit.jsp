<%@ page import="java.sql.*,databaseconnection.*"%>

<%
	
		String a=request.getParameter("i");
		System.out.println(a);
		int i=Integer.parseInt(a);

		String subject=(String)session.getAttribute("subject");
		String s1=(String)session.getAttribute("s1");
		//System.out.println(s1);
		String n[]=new String[i];
		for(int j=0;j<i;j++)
{

	n[j]=request.getParameter("A"+j);
	System.out.println(n[j]);
	//out.println(n[j]);
}


		 try
	{

	Connection con = databasecon.getconnection();
	Statement st=con.createStatement();
int k=0,m=0;

	ResultSet rs=st.executeQuery("select answer from questions where subject='"+subject+"'");
System.out.println("db con");
	while(rs.next())
	{
String g=rs.getString(1);

		if(g.equals(n[k]))
		{
//out.println(m);

m=m+1;
System.out.println("m value is for "+m+"iteration iss"+k);
		}

k++;
			

	}
	System.out.println("no of correct answers:" +m);
	String str=Integer.toString(m);
	session.setAttribute("m",str);
	response.sendRedirect("examresults.jsp");
}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}
%>