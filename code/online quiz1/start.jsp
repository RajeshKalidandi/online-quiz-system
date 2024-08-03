
<%
		String subject=request.getParameter("subject");
		session.setAttribute("subject",subject);%>
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
           
			<li><a href="playquiz.jsp"><span><span>Play Quiz</span></span></a></li>
           <li><a href="index.jsp"><span><span>Logout</span></span></a></li>
          </ul>
        </nav>
		</div>
		
		  <marquee behavior="alternate"><font size="+1" color="#FF0000">welcome to online quiz</font></marquee>
<form name="none" action="exam.jsp" method="post">
         
		  <table align="center"  width="750">
<h3>
  Choose the correct option from the choices given under the question.
  Test your knoweldge of 'c language' by playing  'c language' quiz.The test contains 30 questions.you will get 1 mark
  for each correct answer.At the end of the quiz, total score will be displayed.If you get full score,you will get  digital ertification.</h3>
</p> 
 <br>
 <h3 align="center"> Start the quiz now by clicking on the start button below</h3> 
  <label></label>
  <table width="1000" border="0" cellspacing="0">

               <div align="center">
          <input type="submit" name="Start" value="Start" />
					<div>
                  </table>
                   </form>
		
		
		
		</td></tr>


</table>	
			 
     
    </header>
    <!-- content -->
    <article id="content">
      <section class="col1">
        
</html>