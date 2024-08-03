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
            
          </ul>
        </nav>
      </div>
      <div class="wrapper">
        <div class="text"> <span class="tittle">Best<span>Professional Soft</span></span>
          <p>Sed ut perspiciatis unde omnis natius<span>error volup accusantium doloremque</span><span>laudantium, totaeim aperiam, eaque</span><span>ipsaquae ab illo inventore.</span></p>
          <a href="#" class="button1">More Info</a> </div>
        <div id="gallery">
          <ul id="myRoundabout">
            <li><img src="images/img1.png" alt=""></li>
            <li><img src="images/img2.png" alt=""></li>
            <li><img src="images/img3.png" alt=""></li>
          </ul>
        </div>
      </div>
    </header>
    <!-- content -->
    <article id="content">
      <section class="col1">
	 
         <tr ><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B><I></I></B></td>
   
			<td>
			<%
			
			String a=(String)session.getAttribute("m");
			String b=(String)session.getAttribute("username");
			String c=request.getParameter("feedback");
			//System.out.println(m);
			Statement st = null;
			ResultSet rs = null;
			
			try
		{


		Connection con = databasecon.getconnection();
		PreparedStatement psmt1=null;
		psmt1=con.prepareStatement("insert into marks values(?,?,?)");


		psmt1.setString(1,b);
		psmt1.setString(2,a);
		psmt1.setString(3,c);

		psmt1.executeUpdate();

		}
		catch(Exception ex)
		{

		out.println("Error in connection : "+ex);

		}


		%>	
			<h2> You have completed the Test<br/></h2>
			</td>
			
			</tr>
			<br>
			<br>
			<br>
			<br>
			<br>
			<tr>
			<td><a href="index.html">Click here to logout</a>
			</td>
			</tr>

			</table>
</html>