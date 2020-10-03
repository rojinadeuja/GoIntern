<%-- 
    Document   : signup_company
    Created on : Jan 17, 2017, 10:35:59 AM
    Author     : Roseenah
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.info.model.CUser"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.info.model.Company"%>

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
<style type="text/css">
.flable {
	color: gray;
}

.status {
	font-family: verdana;
	font-size: 12px;
}

.cname {
	color: blue;
}
</style>
<script src="jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
          $(document).ready(function(){
              $(".cname").change(function(){
                  var cname = $(this).val();
                  if(cname.length >= 3){
                      $(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");
                       $.ajax({
                          type: "POST",
                          url: "check2",
                          data: "cname="+ cname,
                          success: function(msg){

                              $(".status").ajaxComplete(function(event, request, settings){
                                   
                                  $(".status").html(msg);

                              });
                          }
                      }); 
                  }
                  else{
                       
                      $(".status").html("<font color=red>Must be min <b>3</b> character long.</font>");
                  }
                  
              });
          });
        </script>
<script type="text/javascript">  
function validate()
{  
    var status=false;
var cpassword=document.f1.cpassword.value;  
if(cpassword.length<8){  
document.getElementById("cpasswordloc").innerHTML=  
" <img src='images/unchecked.gif'/> Must be atleast 8 characters long";  
 status= false;  
}else{  
status= true;  
}  


var password=document.f1.password.value;  
if (cpassword!=password){  
 document.getElementById("passwordloc").innerHTML=" <img src='images/unchecked.gif'/> Password doesnot match"; 
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
                 <%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/gointerndb?zeroDateTimeBehavior=convertToNull";
String dbName = "jsptutorials";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gointerndb?zeroDateTimeBehavior=convertToNull","root","");
statement=connection.createStatement();


PreparedStatement getLastInsertId = connection.prepareStatement("SELECT clid FROM companylist ORDER BY clid DESC LIMIT 1");
ResultSet rs = getLastInsertId.executeQuery();
while(rs.next()){


//PreparedStatement getLastInsertId = connection.prepareStatement("SELECT LAST_INSERT_ID() FROM applicantlist");
//ResultSet rs = getLastInsertId.executeQuery();
//insertId = rs.getLong("last_insert_id()");   
//out.println(insertId);
%>
<%--
String x=request.getParameter("x");
<%=rs.getlong("last_insert_id")%>
--%>
                <form method="post" action="CompServlet">
                    <label for="cname">Username:</label>
                    <input type="text" id="cname" name="cname" class="cname" style="display: block; 
	float: left; 
	width: 240px; 
	padding: 8px; 
	margin-bottom: 20px; 
	color: #666;
	background: #fff; 
	border: 1px solid #666; 
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;"/>
                    <span class="status"></span>
                    
                    <label for="cpassword">Password:</label>
                    <input type="password" id="cpassword" name="cpassword" class="required input_field" style="float:left;" />
                      <span id="cpasswordloc"></span>
                    <div class="clear"></div>
                    <label for="cpassword">Re-Password:</label>
                    <input type="password" id="password" name="password" class="required input_field" style="float:left;" />
                       <span id="passwordloc"></span>
                    <div class="clear"></div>
                    
                   <input type="hidden" id="uid" name="uid" value="<%=rs.getString("clid")%>" />
                    <input type="submit" name="Submit" value="Submit" class="search_2 float_right" />
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
              </form>
            </div> 
            
			</div>
            <div class="clear h30"></div>
             Tel: <br />
             Fax: <br /><br />	
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
