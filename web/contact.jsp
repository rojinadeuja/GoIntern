
<!DOCTYPE html>
<html>
  <head>

<title>Contact Us</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2067 Education
http://www.tooplate.com/view/2067-education
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script type="text/JavaScript" src="js/jquery-1.6.3.js"></script> 

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

</head>
<body>

<div id="tooplate_header">
    <a href="index.jsp" class="sitetitle">Education Template</a>  
    <div id="tooplate_menu" class="ddsmoothmenu">
                 <ul>
            <li><a href="index.jsp">Home</a></li>
          <li><a href="signup.jsp">Sign Up</a>
                <ul>
                    <li><a href="signup_applicant.jsp">Applicant</a></li>
                    <li><a href="signup_company.jsp">Company</a></li>
                                                                                  
                </ul>
            </li>
          <li><a href="gettheapp.jsp">Get the App</a>
                <ul>
                    <li><a href="gettheapp.jsp">Android</a></li>
                    <li><a href="gettheapp.jsp">Windows</a></li>
                    <li><a href="gettheapp.jsp">IOS</a></li>
                </ul>
            </li>
            <li><a href="about.jsp">About</a></li>                
            <li class="last"><a href="contact.jsp" class="last">Contact</a></li>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->      
</div> <!-- END of header -->

    <div id="tooplate_main">
    	<div id="tooplate_content" class="left">
        	<div id="contact_form">
                
<h3>Our Contact Form</h3>

                <form action="EmailSendingServlet" id="frmContact" name="frmContact" method="POST">
                    <label for="author">Your email:</label>
                    <input type="text" name="name" class="required input_field" />
                    <div class="clear"></div>
                    <label for="phone">Subject:</label>
                    <input type="text" name="subject" class="required input_field" />
                    <div class="clear"></div>
                    <label for="text">Message:</label>
                    <textarea name="content" class="required"></textarea>
                    <div class="clear"></div>
                     <input type="hidden" name="recipient" class="validate-email required input_field" value="rojinadeuja33@yahoo.com"/>
                    <input type="submit" value="Send" id="send-message" name="submit" class="search_2 float_right" />
               </form>
            </div> 
            
			</div>
            <div class="clear h30"></div>
             Tel: 01-6611216 <br />
             Email: info.gointern@gmail.com, rojinadeuja33g@gmail.com
            
			
        
  
            
         
        <div class="clear h30"></div>
        <div style="display:none;" class="nav_up" id="nav_up"></div>
    </div>    <!-- END of tooplate_main -->


<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	<div class="col_4">
        	<h4>Pages</h4>
                      <ul class="nobullet bottom_list">
            	<li><a href="index.jsp">Home</a></li>
                <li><a href="gettheapp.jsp">Get the App</a></li>
                <li><a href="signup.jsp">Sign Up</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>

        </div>
        
        
        
         <div class="col_4">
        	<h4>About</h4>
            <p> GoIntern is a free portal developed by Rojina Deuja and Rozy Karna.</p>
            <a href="#" class="more">More</a>
        </div>
<div class="col_4 no_margin_right">
        	<h4>Twitter</h4>
            <p>Tweet about us with <a href="#">#GoIntern</a></p>
            <a href="#">Follow us on Twitter</a>
        </div>
        <div class="clear"></div>
       
        <div class="clear"></div>
	</div> <!-- END of tooplate_footer -->
</div> <!-- END of tooplate_footer_wrapper -->

<div id="tooplate_copyright_wrapper">
    <div id="tooplate_copyright">
        Copyright � 2016 Virona Solutions 
        
    </div>
</div>

<script src="js/scroll-startstop.events.jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		var $elem = $('#content');
		
		$('#nav_up').fadeIn('slow');
		
		$(window).bind('scrollstart', function(){
			$('#nav_up,#nav_down').stop().animate({'opacity':'0.2'});
		});
		$(window).bind('scrollstop', function(){
			$('#nav_up,#nav_down').stop().animate({'opacity':'1'});
		});
		
		$('#nav_up').click(
			function (e) {
				$('html, body').animate({scrollTop: '0px'}, 800);
			}
		);
	});
</script>

</body>
</html>
