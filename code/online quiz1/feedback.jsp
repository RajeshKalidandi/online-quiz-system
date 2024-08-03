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
	  <title>feedback</title>
</head>
<body bgcolor="#FFFFFF" background="air-balloon-gradient-wallpaper.jpg">
<center>


<form action="feedback1.jsp" method="post">
<form >
<table align="center"  width="824" border="0">
    <tr><td></td><td></td></tr>
	<tr><td></td><td></td></tr>
	<tr>
      <th width="367" scope="row"><font color="black">Rollno</font></th>
      <td width="447"><label>
        <input type="text" name="rollno" />
      </label></td>
    </tr>
    <tr>
      <th scope="row"><font color="black">Email-id</font></th>
      <td><label>
        <input type="text" name="email" />
      </label></td>
    </tr>
    <tr>
      <th scope="row"><font color="black">Quality of the test: </font></th>
      <td><label>
        <select name="qot">
          <option>Excellent</option>
          <option>Medium</option>
          <option>Poor</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <th scope="row"><font color="black">Difficulty of the test</font>: </th>
      <td><label>
        <select name="dot">
          <option>Easy</option>
          <option>Normal</option>
          <option>Hard</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <th scope="row"><font color="black">Comments:</font></th>
      <td><label>
        <textarea name="comment"></textarea>
      </label></td>
    </tr>
    <tr>
      <th colspan="2" scope="row"><label>
        <input type="submit" name="Submit" value="Submit" />
      </label></th>
    </tr>
  </table>
  </center>
</form>
     
</html>