<%-- 
    Document   : user
    Created on : Aug 30, 2016, 6:26:17 PM
    Author     : shaiksardar
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>DEYPOS</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
		
		
<!-- Begin JavaScript -->

		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.easing.1.3.js"></script>
		 <script type="text/javascript" src="lib/jquery.coda-slider-2.0.js"></script>
<!-- Initialize each slider on the page. Each slider must have a unique id -->
	<script type="text/javascript">
	$().ready(function() {
       $('#coda-slider-2').codaSlider({
           autoSlide: true,
           autoSlideInterval: 6000,
           autoSlideStopWhenClicked: true	
			   
       });
   });
</script>
	<!-- End JavaScript -->

<!-- Pirobox setup and styles -->

<script type="text/javascript" src="lib/pirobox.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 400, //animation speed
			bg_alpha: 0.1, //background opacity
			slideShow : false, // true == slideshow on, false == slideshow off
			slideSpeed : 4, //slideshow duration in seconds(3 to 6 Recommended)
			close_all : '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

	});
});
</script>

<link href="images/style.css" rel="stylesheet" type="text/css" /> 

<!-- Pirobox setup and styles end-->
		
    </head>
    <body>
        <div id="bg_img">
            <div id="site_div">
                <div id="header">
                    <div id="logo" align="left">
                        <h1><a href="#"><font color="">DEYPOS</font></a></h1>
                        <a href="#"><small> Deduplicatable Dynamic Proof of Storage for Multi-User Environments
</small></a>
                    </div>
                    <div id="menu">
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="manager.jsp">Manager</a></li>
                            <li><a href="user.jsp" class="active">User</a></li>
                            <li><a href="cloudservice.jsp">Cloud Provider</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                    <div style="clear: both;"></div>
                </div>
                <div id="main">
                    <div class="main_top"></div>
                    <div class="main_bg">
                        <div class="contact">
                            <div class="index_left">
<!--                                <img src="images/contact.png" alt="" title="" style="float: left; padding-right: 10px;" />-->
                                <h4>Login Form</h4>
                                <div class="pad_left">
                                    <center><h2><a href="reg.jsp">New User</a></h2></center>
                                    <br /><br />
                                    <p></p>
                                    <div id="contact_form">
                                        <form id="form2"  method="post" action="userDB.jsp">
                                            <fieldset>
                                                <label for="con_name">Email:</label><br />
                                                <input id="con_name" type="text" name="uname" required="true" value="" alt=""/><br />
                                                <label for="con_email">Password:</label><br />
                                                <input id="con_email" type="password" name="pass" required="true" value="" alt=""/><br />
                                                
                                                <input type="submit" id="contact-submit" value="Login"/>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            
                            <div style="clear: both"></div>
                        </div>
                    </div>
                    <div class="main_bot"></div>
                </div>

            <div id="footer">
                


                <div id="footer_bot">
                    <p>Copyright  2018. <a href="#">CBIT</a> | <a href="#">Terms of Use</a> </p> 
	<!-- Please DO NOT remove the following notice --><div class="foot_lnk"><p>Website Design <a href="http://www.metamorphozis.com/" class="cop_lnk" title="Free Website Templates">Free Website Templates</a></p><!-- end of copyright notice-->
                </div>
            </div>
        </div>
      <script type="text/javascript" src="lib/scripts.js"></script>
    </body>
</html>
