<%@ page import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ONLINE QUIZ</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
<script type="text/javascript" src="js/Shanti_400.font.js"></script>
<script src="js/roundabout.js" type="text/javascript"></script>
<script src="js/roundabout_shapes.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.2.js" type="text/javascript"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page1">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        
        <span class="date">
        <!-- -->
        </span> </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo">ONLINE QUIZ</a></h1>
        <nav>
          <ul id="menu">
            <li id="menu_active"><a href="index.html"><span><span>Home</span></span></a></li>
            <li><a href="useful links.jsp"><span><span>Useful Links</span></span></a></li>
            <li class="nav3"><a href="feedback.jsp"><span><span>Feedback</span></span></a></li>
            <li class="nav4"><a href="aboutus.html"><span><span>About US</span></span></a></li>
            <li class="nav5"><a href="login.jsp"><span><span>Login</span></span></a></li>
			<li class="nav5"><a href="signup.jsp"><span><span>Sign up</span></span></a></li>
          </ul>
        </nav>
      </div>
      <div class="wrapper">
        <div class="text"> <span class="tittle">welcome to<span>online quiz</span></span>
          <p>This website provides quizes on different categories related to technical domain such as c-language, operating systems and database managemnt . The users can play quiz and asses themselves in that particular subject. We will provide the candidate with merit certificate based on performance level in the quiz. </p>
        </div>
          
        <div id="gallery">
          <ul id="myRoundabout">
           <li><img src="images/img1.jpg" alt=""></li>
           
          </ul>
        </div>
      </div>
</header>
    <!-- content -->
    <article id="content">
      <section class="col1">
	  <%
		String subject=(String)session.getAttribute("subject");
		session.setAttribute("subject",subject);

		String no=request.getParameter("num");
		 //String subject=session.getAttribute("subject").toString();
System.out.println(subject);
System.out.println(no);
		 try
	{
int i=0;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
	
	String query = "select * from questions where subject='"+subject+"'";
	Statement st = con.createStatement();
         ResultSet rs1 = st.executeQuery(query);
		 System.out.println("done11");
//System.out.println(rs1.getString(4));	  

	while (rs1.next()) 
	{
	System.out.println("doners");
	System.out.println(rs1.getString(4));	         
		  
	%>


		  <form name="f" method="get" action="submit.jsp" onNext="goto Next()">
  <table style="margin-top:10px; border-radius:10px;box-shadow:2px 2px 15px #003300;"align="center" bgcolor=" #FDEEF4" height="255" width="430">
   <tr ><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B><I>Question:<%=rs1.getString(3)%></I></B></td>
   
  <td>
<input type="radio"  name="A<%= i%>"  value=a><%=rs1.getString(4)%>&nbsp;&nbsp;<br><br>
<input type="radio"  name="A<%= i%>" value=b><%=rs1.getString(5)%><br><br>
<input type="radio"  name="A<%= i%>" value=c><%=rs1.getString(6)%><br><br>
<input type="radio"  name="A<%= i%>" value=d><%=rs1.getString(7)%></td><br><br>

</tr>

	 <%
		 i++;
	 
	
	}%>
	<input type=hidden value="<%=i%>" name=i>
<%}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}
//System.out.println("no values");


%>
  

     <tr> 
       <td  align="center"><a href ="Preferences.jsp"><input type="button" value="PREV"></a></td>&nbsp;
		<td  align="center"><input type="submit" value="Submit">&nbsp;
		<td  align="center"><a href ="feedback.jsp"><input type="button" value="LOGOUT"></td>
               
	</tr>
	</form>
        
</html>