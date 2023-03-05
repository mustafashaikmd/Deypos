<%-- 
    Document   : contact
    Created on : Aug 30, 2016, 6:28:58 PM
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
                            <li><a href="user.jsp">User</a></li>
                            <li><a href="cloudservice.jsp">Cloud Provider</a></li>
                            <li><a href="contact.jsp" class="active">Contact Us</a></li>
                        </ul>
                    </div>
                    <div style="clear: both;"></div>
                </div>
                <div id="main">
                    <div class="main_top"></div>
                    <div class="main_bg">
                        <div class="contact">
                            <div class="index_left">
                                <img src="images/contact.png" alt="" title="" style="float: left; padding-right: 10px;" />
                                <h4>Contact Form</h4>
                                <div class="pad_left">
                                    <a href="#">Deduplicatable Dynamic Proof of Storage for Multi-User Environments. </a>
                                    <br /><br />
                                    <p></p>
                                    <div id="contact_form">
                                        <form id="form2" method="post" action="#">
                                            <fieldset>
                                                <label for="con_name">Name:</label><br />
                                                <input id="con_name" type="text" name="con_name" value="" alt=""/><br />
                                                <label for="con_email">Your Email:</label><br />
                                                <input id="con_email" type="text" name="con_email" value="" alt=""/><br />
                                                <label for="con_website">Your Phone:</label><br />
                                                <input id="con_website" type="text" name="con_website" value="" alt=""/><br />
                                                <label for="con_mess">Message:</label><br />
                                                <textarea id="con_mess" name="con_mess" cols="0" rows="0"></textarea><br />
                                                <input type="submit" id="contact-submit" value="Submit"/>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="index_right">
                                <img src="images/green.png" alt="" title="" style="float: left; padding-right: 10px;" />
                                <h2>Our Location</h2>
                                <a href="#"><img src="images/location2.jpg" alt="" title="" style="margin-bottom: 10px;  padding-top: 5px"/></a>
                                <div class="dotted_hr"></div>

                                <h3>Our Head Office Address</h3>
                                <p>Mustafa Software Solutions</p>
                                <p>Gacchibowli Hyderabad</p>
                                <p>Phone:+91 9505456051</p>
                                <p>Web: www.mustafasoftsol.in</p>
                                <a href="#">E-mail: shaikmustafa572@gmail.com</a>
                                <br /><br />
                                <div class="dotted_hr"></div>

                                <h3>Our Service Center Address</h3>
                                <p>CBIT</p>
                                <p>KADAPA</p>
                                <p>Phone:  1(234) 567 8910</p>
                                

                            </div>
                            <div style="clear: both"></div>
                        </div>
                    </div>
                    <div class="main_bot"></div>
                </div>

            <div id="footer">
                <div class="foot_col">
                    <center><p align="justify"><font color="#311b92">Deypos is a useful cryptographic primitive that enables users to check the integrity of outsourced files and to efficiently update the files in a cloud server.<br>
A practical Multi user cloud storage system needs the secure client side deduplication technique which allows user to skip the uploading process.<br>One can obtain the ownership of files immediately when other owners of the same files have uploaded them to server.<br>    
Deypos implementation is efficient , especially when  the file size and the number of the challenged file blocks are large.
</font></p></center>
                    

                    
                    <div style="clear: both"></div>
                </div>


                <div id="footer_bot">
                    <p>Copyright  2018. <a href="#">CBIT</a> | <a href="#">Terms of Use</a> </p> 
	<!-- Please DO NOT remove the following notice --><div class="foot_lnk"><p>Website Design <a href="http://www.metamorphozis.com/" class="cop_lnk" title="Free Website Templates">Free Website Templates</a></p><!-- end of copyright notice-->
                </div>
            </div>
        </div>
      <script type="text/javascript" src="lib/scripts.js"></script>
    </body>
</html>
