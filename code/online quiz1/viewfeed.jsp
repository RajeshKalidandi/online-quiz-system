<%@ page import="java.sql.*,databaseconnection.*"%>
<%try
{

	Connection conn = databasecon.getconnection();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from feed");

%>

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
        <div class="text"> <p><b><font color='black' size='10'>View FeedBack Here</b></p>
     

        </div>
        <div id="gallery">
          
           <table border='1' cellspacing='15' bordercolor='red'>
		   <tr>
		   <td><font color='white'>Rollno</td>
		   <td><font color='white'>Email</td>
		   <td><font color='white'>Qulaity Of Exam</td>
		   <td><font color='white'>Difficulty Of Exam</td>
		   <td><font color='white'>Comment</td>
		   </tr>
		   <%while(rs.next()){%>
		   <tr>
		   <td><font color='white'><%=rs.getString(1)%></td>
		   <td><font color='white'><%=rs.getString(2)%></td>
		   <td><font color='white'><%=rs.getString(3)%></td>
		   <td><font color='white'><%=rs.getString(4)%></td>
		   <td><font color='white'><%=rs.getString(5)%></td>
		   </tr>
            <%}}
catch(Exception e){
out.println(e);
}%>
         
        </div>
      </div>
    </header>
    <!-- content -->
    <article id="content">
      <section class="col1">
        
</html>