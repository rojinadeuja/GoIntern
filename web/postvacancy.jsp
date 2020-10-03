<%-- 
    Document   : signup_applivant
    Created on : Jan 17, 2017, 10:34:59 AM
    Author     : Roseenah
--%>
<%@page import="com.info.model.CUser"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.info.model.Applicant"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>

<title>Post Vacancy</title>
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
  <a href="company.jsp" class="sitetitle">Education Template</a>  
      <div id="tooplate_menu" class="ddsmoothmenu">
              <ul>
            <li><a href="company.jsp">Home</a></li>
          <li><a href="vacancylist_company.jsp">Vacancies</a></li>
          <li><a href="postvacancy.jsp">Post Vacancies</a>
            </li>
            <li><a href="#">My Account</a>
  <ul>
                     
                    <li><a href="myaccount_company.jsp">Edit Account</a></li>
                     <li><a href="upload.jsp">Upload Logo</a></li>
                    <li><a href="signout.jsp">Sign Out</a></li>
                   
                </ul></li>                
           
        </ul>
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->      
</div> <!-- END of header -->

    <div id="tooplate_main">
    	<div id="tooplate_content" class="left">
        	<div id="contact_form">
                
<h3>Post Vacancy</h3>
 <%
String id = request.getParameter("userId");
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
<%CUser verifiedCUser= (CUser)session.getAttribute("verifiedCUser");
 
 int uiid=verifiedCUser.getCUserId();

try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gointerndb?zeroDateTimeBehavior=convertToNull","root","");
        
statement=connection.createStatement();
String sql ="SELECT * FROM companylist,company WHERE companylist.clid=company.uid AND company.cid="+uiid;
        //WHERE applicantlist.Id=applicant.uid AND applicant.aid="+uiid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                <form method="post" action="VacancyServlet">
                    <label for="title">Vacancy Title:</label>
                    <input type="text" id="title" name="title" class="required input_field" />
                    <div class="clear"></div>
                    <label for="number">Number of Vacancy:</label>
                    <input type="text" id="number" name="number" class="required input_field" />
                    <div class="clear"></div>
                    <label for="detail">Detail:</label>
                    <input type="text" id="detail" name="detail" class="required input_field" />
                    <div class="clear"></div>
                    <label for="expirydate">Expiry Date (YYYY-MM-DD):</label>
                    <input type="text" id="expirydate" name="expirydate" class="required input_field" />
                    <div class="clear"></div>
                     <input type="hidden" id="cid" name="cid" value="<%=resultSet.getString("clid")%>" />
                   <input type="submit" name="Submit" value="Submit" class="search_2 float_right" />
                </form>
                <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
  
            </div> 
            
			</div>
            
			
        </div>
  
            
         
        <div class="clear h30"></div>
        <div style="display:none;" class="nav_up" id="nav_up"></div>
    </div>    <!-- END of tooplate_main -->


<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	<div class="col_4">
        	<h4>Pages</h4>
                     <ul class="nobullet bottom_list">
            	<li><a href="company.jsp">Home</a></li>
                <li><a href="gettheapp.jsp">Get the App</a></li>
               
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
