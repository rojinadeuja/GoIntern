<%-- 
    Document   : fullpost
    Created on : Jan 17, 2017, 10:38:56 AM
    Author     : Roseenah
--%>

<%@page import="java.io.InputStream"%>
<%@page import="com.info.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.info.model.Vacancy"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
  <head>

<title></title>
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
            <li><a href="applicant.jsp">Home</a></li>
          <li><a href="vacancylist_applicant.jsp">Vacancies</a></li>
          <li><a href="uploadcv.jsp">Upload CV</a>
            </li>
            <li><a href="#">My Account</a>
  <ul>
                     
                    <li><a href="myaccount_applicant.jsp">Edit Account</a></li>
                    <li><a href="signout.jsp">Sign Out</a></li>
                   
                </ul></li>                
           
        </ul>
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->       
</div> <!-- END of header -->

    <div id="tooplate_main">
       
       <%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/gointerndb?zeroDateTimeBehavior=convertToNull";

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
String str= "Java Interns";
String ss =request.getParameter("Id");



//int y = Integer.parseInt(ss);
//String sql ="SELECT * FROM vacancylist where Id ="+ss;
String sql ="SELECT * FROM vacancylist,companylist WHERE vacancylist.cid=companylist.clid AND vacancylist.vid="+ss;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
    request.setAttribute("clid",resultSet.getString("companylist.clid") );
%>

    	<div id="tooplate_content" class="left">
        	<div class="post">
                    <h2 ><%=resultSet.getString("title") %></h2><br>
                        <div class="post_meta">
                    <span class="post_author"><%=resultSet.getString("companylist.name")%></span>
                    <span class="tag">Java,Core</span>
                    <span class="number"><%=resultSet.getString("number") %></span>
                    <span class="date"><%=resultSet.getString("expirydate") %></span>
		</div>
                    <br><p><%=resultSet.getString("detail") %></p>
                                
                                <a class="more" href="applyviaemail.jsp">Apply now</a>
                </div>
        <div class="post">
	            <h4>Company Profile:</h4>
                     
                <div style="background-image: url('logo.jsp?Id=+<%=resultSet.getString("clid") %>'); background-repeat: no-repeat; width:1000px; height:200px; ">
                   
                    
                    <%--<img class="img_border img_border_b img_nom" src="RowServlet alt="Post Image" />
                    --%></div>  
                <div class="post_meta">
                    <h3><%=resultSet.getString("companylist.name")%></h3>
                    <span class="location"><%=resultSet.getString("companylist.address")%></span>
                    <span class="phone"><%=resultSet.getString("companylist.phone") %></span>
                    <span class="email"><%=resultSet.getString("companylist.email") %></span>
		</div>
                    <br><p><%=resultSet.getString("companylist.details") %></p>
                    <a class="moree" href="applyviaemail.jsp">Apply via email</a>
        </div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>  
<%
Statement statement1 = null;
ResultSet resultSet1 = null;
%>
<h4>Comments</h4>
            <hr class="m30" />
 <%%>
<%
    User verifiedUser= (User)session.getAttribute("verifiedUser");
    String usernam= verifiedUser.getUserName();
 try{ 
String iid =request.getParameter("Id");
//int y = Integer.parseInt(ss);
//String sql ="SELECT * FROM vacancylist where Id ="+ss;
String sqlstr ="SELECT * FROM commentlist WHERE vid="+iid;
resultSet1 = statement.executeQuery(sqlstr);
while(resultSet1.next()){
%>      
 
            <ol class="comment_list">
            <li>
                <div class="comment_box">
                    <img src="images/avator.jpg" alt="" class="img_fl img_border" />
                    <div class="comment_content">
                        <div class="comment_meta"><strong><a href="#"><%=resultSet1.getString("aname") %></a></strong></div>
                       
                        <p><%=resultSet1.getString("content") %></p>
                        <br><%
                       String usernam1= resultSet1.getString("aname");
                           if (usernam1.equals(usernam))
                           { %> <form action="DeleteCommentServlet">
                     <input type="hidden" id="id" name="id" value="<%=request.getParameter("Id")%>" />
                     <input type="hidden" id="id" name="cmntid" value="<%=resultSet1.getString("cmntid")%>" />
                     <input type="submit" value="Delete" class="search_2" />
                      </form>
                              <%}%> 
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
        </ol> 
        <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
        <div class="clear"></div>    
           <%-- <div class="pagging">
                <ul>
                    <li><a href="#" target="_parent">Previous</a></li>
                    <li><a href="#" target="_parent">1</a></li>
                    <li><a href="#" target="_parent">2</a></li>
                    <li><a href="#" target="_parent">Next</a></li>
                </ul>
                <div class="clear"></div>
            </div>--%>
            
            <hr />
            
            <div id="comment_form">
            <h3>Leave your comment</h3>
            
            <form action="CommentServlet" method="post">
                <label>Username (* required )</label>
                <input type="text" name="aname" class="input_field" />
                <label>Email  (* required but it will not be published )</label>
                <input type="text" name="email" class="input_field" />
                <label>Your comment</label>
                <input type="text" name="content" class="input_field" />
                <%String ss =request.getParameter("Id");%> 
                     
                <input type = "hidden" name = "vid" value = "<%=ss %>" />
                
                <input type="submit" name="Submit" value="Submit" class="search_2" />
            </form>
        </div>
            <br><br> <h4>Share:</h4>
			<div class="post_meta">
                            <span class="facebook"><a href="www.facebook.com">Facebook</a></span>
                    <span class="twitter"><a href="www.twitter.com">Twitter</a></span>
                    <span class="linkedin"><a href="www.linkedin.com">Linkedin</a></span>
		</div>
        </div>
        <div id="tooplate_sidebar" class="right">
        	<div class="content_wrapper content_mb_60">
                <h3>Categories</h3>
                <ul class="sidebar_link">
                     <li><a href="#">Java</a></li>
                    <li><a href="#">PHP</a></li>
                    <li><a href="#">JSP</a></li>
                    <li><a href="#">Networking</a></li>
                    <li><a href="#">Project Management</a></li>
                    <li><a href="#">Html, CSS</a></li>
                    <li><a href="#">Graphic Designing</a></li>
                    
                </ul>
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
            	<li><a href="applicant.jsp">Home</a></li>
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
