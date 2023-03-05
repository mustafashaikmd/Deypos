<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                            <li><a href="userhome.jsp">Home</a></li>
                            <li><a href="upload.jsp">Uploadfiles</a></li>
                            <li><a href="uviewclouds.jsp">ViewClouds</a></li>
                            <li><a href="searchfiles.jsp" class="active">Searchfiles</a></li>
                            <li><a href="feedback.jsp">Feedback</a></li>
                            <li><a href="index.html">Logout</a></li>
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
                                <h4>Search Files</h4>
                                <div class="pad_left">
                                    <a href="#">Deduplicatable Dynamic Proof of Storage for Multi-User Environments. </a>
                                    <br /><br />
                                    <p></p>
                                    <center>
                                        <table border="">
                                            <%@include file="jdbc.jsp" %>
                                            <tr><th><font size="4" color="red">USER NAME</font></th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th><font size="4" color="red">FILE NAME</font></th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th><font size="4" color="red">KEY</font></th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th><font size="4" color="red">CLOUD NAME</font></th></tr>
                                            <%
String f=request.getParameter("f2");
String sql="select * from UPLOAD1 where FNAME='"+f+"'";                                           
Statement s=con.createStatement();
ResultSet rs=s.executeQuery(sql);
while(rs.next()){
%>
<tr><td><font size="4" color="blue"><%=rs.getString(1)%></font></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><font size="4" color="blue"><%=rs.getString(2)%></font></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><font size="4" color="blue"><%=rs.getString(5)%></font></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><font size="4" color="blue"><%=rs.getString(7)%></font></td></tr>
<%
}
%>



                                        </table>
                                        
                                        
                                        
                                    </center>
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


