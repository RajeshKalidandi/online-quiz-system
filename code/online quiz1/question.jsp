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
            <li id="menu_active"><a href="admin.jsp"><span><span>Home</span></span></a></li>
            <li><a href="question.jsp"><span><span>Add questions</span></span></a></li>
            <li class="nav3"><a href="viewfeed.jsp"><span><span>Feedbacks</span></span></a></li>
            <li class="nav4"><a href="index.html"><span><span>logout</span></span></a></li>
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
	  <table align="center"  width="750">
<tr>	<td>
		
		
		        <form name="f2" method="post" action="addquestion.jsp" onsubmit="return logout()">
                  <table style="margin-top:50px; margin-left:20px; border-radius:10px;box-shadow:2px 2px 15px FF00CC;"   align="center" bgcolor="#0099CC" height="400" width="500">
				 
                    <tr> 
                      <td class="s1" align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Que id</font>&nbsp;&nbsp;&nbsp;</td>
                      <td class="s1"><input type="text" name="qid" ></td>
                    </tr>
					<td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Subject&nbsp;&nbsp;&nbsp;</font></td>
                      <td> <input name="subject" type="option"> </td>
					  </tr>
					<tr>
					  <td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Question&nbsp;&nbsp;</font></td>
					 <td> <textarea rows="3", cols="16" name="quesn">  </textarea></td>
					  </tr>
					    
					<tr> 
                      
                    <tr> 
                      <td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Option1&nbsp;&nbsp;&nbsp;</font></td>
                      <td> <input name="opt1" type="option"> </td>
					  </tr>
					  <tr>
					  <td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Option2&nbsp;&nbsp;&nbsp;</font></td>
					 <td> <input type="text" name="opt2" ></td>
					  </tr>
					  <tr>
					  <td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Option3&nbsp;&nbsp;&nbsp;</font></td>
					 <td> <input type="text" name="opt3" ></td>
					  </tr>
					  <tr>
					  <td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Option4&nbsp;&nbsp;&nbsp;</font></td>
					  <td><input type="text" name="opt4" ></td>
					  </tr>
					  <tr>
					  <td align="right"><font color= "990033"size="2" face="Verdana, Arial, Helvetica, sans-serif">Answer&nbsp;&nbsp;&nbsp;</font></td>
					  <td class="fielditem"><select name="ans" style="background-color:#ffffff;">
<option value="a">a</option>
<option value="b">b</option>
<option value="c">c</option>
<option value="d">d</option>
</select>
</tr>

                    <tr> 
                      <td colspan="2" class="s1" align="left"><input class="btr-blue" type="submit" value="Add" ></td> 
					  <td colspan="2" class="s1" align="center"><input class="btr-blue" type="reset" value="Clear" > </td>
               <td colspan="2" class="s1" align="right"><a href="/relogin.jsp"><input class="btr-blue" type="button" name="Logout" value="Logout" ></a></td>
               
                    </tr>
					 </table>
                   </form>
      
        
</html>