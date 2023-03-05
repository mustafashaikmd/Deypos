<%-- 
    Document   : reg
    Created on : Aug 31, 2016, 4:16:12 PM
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
<script type="text/javascript">
        function firstname()
    {
      var reg=new RegExp("^[a-zA-Z][a-zA-Z-]{3,20}$");
                var nam=document.f.uname.value;
               
                var namlen=nam.length;
                //alert(namlen);
                var res=nam.match(reg);

                if(res)
                {
                    if(namlen<3)
                    {
                        alert(" FIRSTNAME  length shoud not be less than 4 charecters and Only CHAR And THE NUMBER");
                        
                        document.f.uname.focus();
                    }
                }
                else
                {
                    alert(" FIRSTNAME  should contain alphabetsand the length should not be less than 4 characters");
                document.f.uname.focus();
            }
    }
    function lastname()
    {
        var reg=new RegExp("^[a-zA-Z][a-zA-Z-]{3,20}$");
                var nam=document.f.lname.value;
                var namlen=nam.length;
                //alert(namlen);
                var res=nam.match(reg);

                if(res)
                {
                    if(namlen<3)
                    {
                        alert("LASTTNAME length shoud not be less than 4 charecters and Only CHAR And THE NUMBER");
                        
                        document.f.lname.focus();
                    }
                }
                else
                {
                    alert("LASTTNAME should contain alphabetsand the length should not be less than 4 characters");
                document.f.lname.focus();
            }

    }
    
            function email()
{


    var mail=document.f.email.value;
                var reg1=new RegExp("^([a-z A-Z 0-9])+(\>a-z A-Z 0-9_-])*@([a-z A-Z 0-9])|(\>[a-z A-Z 0-9_-]+)+$");
                var res1=mail.match(reg1);
                if(res1)
                {
                }
                else
                {
                    alert("should not contain any invalid and must follow the standard pattern name@domain.com");
                document.f.email.focus();
            }
}

function validate5()
{


         var pwd=document.f.pass.value;
                var pwdlen=pwd.length;
                if(pwdlen<2)
                {
                    alert("password should not be less than 2 charecters length");
                    document.f.pass.focus();
                }


}
function validate3()
{
    var x=document.f.cpass.value;
    var y=document.f.pass.value;
    if(x==y)
        {}
    else
        {
            alert('pwd and confirm pwd should be same');
            document.f.cpass.focus();

        }



}

function mob()
{
 var phnum=document.f.mob.value;
               var rph = document.f.mob.value;
                var reg2=new RegExp("[0-9]");
                var res2=phnum.match(reg2);

                var phlen=phnum.length;
                if(res2)
                {
                    if(phlen<10)
                    {
                        alert("phone number should contain 10 digits only");
                        document.f.mob.focus();
                    }
                    if(phlen<10)
                    {
                        alert("phone number should contain 10 digits only");
                        document.f.mob.focus();
                    }
                }
                else
                {
                    alert("phone number should contain 10 digits only");
           document.f.mob.focus();
           }
            }


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
                                <h4>Registration Form</h4>
                                <div class="pad_left">
                                   
                                    
                                    <div id="contact_form">
                                        <form id="form2"  name="f" method="post" action="regDB.jsp">
                                            <fieldset>
                                                <label for="con_name">UserName:</label><br />
                                                <input id="con_name" type="text" name="uname" value=""  onblur="firstname()" required="true" alt=""/><br />
                                                 <label for="con_name">Email:</label><br />
                                                 <input id="con_name" type="email" name="email" onBlur='email()' required="true" value="" alt=""/><br />
                                                  <label for="con_name">Mobile:</label><br />
                                                  <input id="con_name" type="text" name="mob" required="true" pattern="[0-9]{10}" title="Must be 10 digits" maxlength="10" value="" alt=""/><br />
                                                   <label for="con_name">Gender:</label><br />
                                                   <input  type="radio" name="sex" value="male" alt=""/>Male<input  type="radio" name="sex" value="female" alt=""/>Female<br />
                                                <label for="con_email">Password:</label><br />
                                                <input id="con_email" type="password" name="pass" required="true" onblur="validate5()" value="" alt=""/><br />
                                                 <label for="con_email">Con-Password:</label><br />
                                                 <input id="con_email" type="password" name="cpass" required="true" onblur="validate3()" value="" alt=""/><br />
                                                <label for="con_mess">Address:</label><br />
                                                <textarea id="con_mess" name="add" cols="0"  required="true" rows="0"></textarea><br />
                                                
                                                <input type="submit" id="contact-submit" value="Register"/>
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
