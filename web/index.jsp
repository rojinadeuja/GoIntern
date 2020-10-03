
<!DOCTYPE html>
<html>
    <head>
<title>GoIntern</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
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
    <a href="index.jsp" class="sitetitle">Go Intern</a>  
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
<div id="tooplate_slider_wrapper">
    <div id="tooplate_slider">
    	<div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <img src="images/slider/11.jpg" alt="" title="#caption1" />
                <img src="images/slider/11.jpg" alt="" title="#caption2" />
                 <img src="images/slider/11.jpg" alt="" title="#caption1" />
                <img src="images/slider/11.jpg" alt="" title="#caption3" />                
            </div>
            <div id="caption1" class="nivo-html-caption">
            	<h1>Find Internships the easy way !</h1>
                <p>GoIntern helps you find your best internship opportunity to start your career</p>
            </div>
            <div id="caption2" class="nivo-html-caption">
                <h1>Download the GoIntern app !</h1>
                <p>GoIntern app helps you look for internships right in your plams.</p>
            </div>
            <div id="caption3" class="nivo-html-caption">
                <h1>Connect with us today to get ahead !</h1>
                <p>Join our portal of hundreds of internships awating you.</p>
            </div>
        </div>
        <div class="button_box">
        	<a href="signin.jsp" class="button blue">Sign In</a>
            <a href="signup.jsp" class="button black">Sign Up</a>
        </div>
        <script type="text/javascript" src="js/jquery-1.6.3.min.js"></script>
		<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
			effect: 'fade',
			controlNav: true, // 1,2,3... navigation
            directionNav: false,
			animSpeed: 800, // Slide transition speed
	        pauseTime: 4000, // How long each slide will show
			});
        });
        </script>	
    </div> <!-- END of slider -->
</div>
    <div id="tooplate_main">
    	<div id="home_about">
        	<h1>Welcome to GoIntern.com</h1>
            <p>GoIntern is a free web and mobile application developed by <a rel="nofollow"  
href="http://www.nec.edu.np" target="_parent">TeamNEC</a>. Visit our page on<br />
            <a href="http://www.facebook.com/gointern" target="_parent">Facebook</a> and like us ! 
</p>
        </div>
    
 </div>
  
        <div class="clear h30"></div>
        <div style="display:none;" class="nav_up" id="nav_up"></div>
    <!-- END of tooplate_main -->

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
        Copyright © 2016 Virona Solutions 
        
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
