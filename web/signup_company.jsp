<%-- 
    Document   : signup_company
    Created on : Jan 17, 2017, 10:35:59 AM
    Author     : Roseenah
--%>


<!DOCTYPE html>
<html>
    <head>

<title>Company Signup</title>
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
<script type="text/javascript">  
function validate()
{  
    var status=false;
var name=document.f1.name.value;  
if(name.length<1){  
document.getElementById("nameloc").innerHTML=  
" <img src='images/unchecked.gif'/> Required";  
 status= false;  
}else{  
status= true;  
}  
var email=document.f1.email.value;   
var atposition=email.indexOf("@");  
var dotposition=email.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
 document.getElementById("emailloc").innerHTML=  
" <img src='images/unchecked.gif'/> Invalid"; 
 status= false;
}
else{status=true;}

var phone=document.f1.phone.value;  
if (isNaN(phone)){  
 document.getElementById("numloc").innerHTML=" <img src='images/unchecked.gif'/> Invalid"; 
 status= false;  
}else{  
status= true;  
 }  
 return status;
}


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
                
<h3>Company Sign Up</h3>
                <form name="f1" method="post" action="CompanyServlet" onsubmit="return validate();">
                    <label for="name">Company Name:</label>
                    <input type="text" id="name" name="name" class="required input_field" />
                    <span id="nameloc"></span>
                    <div class="clear"></div>
                    <label for="website">Website:</label>
                    <input type="text" id="website" name="website" class="required input_field" />
                    <div class="clear"></div>
                     <label for="postaladdress">Postal Address:</label>
                    <input type="text" id="postaladdress" name="postaladdress" class="required input_field" />
                    <div class="clear"></div>
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" class="required input_field" />
                    <div class="clear"></div>
                    <label for="phone">Phone:</label>
                   
                    <input type="text" id="phone" name="phone" class="required input_field" />
                     <span id="numloc"></span>
                    <div class="clear"></div>
                    <label for="email">Email:</label>
                    
                    <input type="text" id="email" name="email" class="validate-email required input_field"/>
                    <span id="emailloc"></span>
                    <div class="clear"></div>
                       <label for="details">Details:</label>
                    <input type="text" id="details" name="details" class="required input_field" />
                    <div class="clear"></div>
                    
                 

                    
                    <input type="submit" name="Submit" value="Submit" class="search_2 float_right" />
                </form>
            </div> 
            
			</div>
            <div class="clear h30"></div>
      
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
