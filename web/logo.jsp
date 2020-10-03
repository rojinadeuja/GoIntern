<%-- 
    Document   : r
    Created on : Feb 7, 2017, 4:39:58 PM
    Author     : Roseenah
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : about
    Created on : Jan 17, 2017, 10:36:34 AM
    Author     : Roseenah
--%>
<!DOCTYPE html>
<%@page import="com.info.model.User"%>
<html>
   <head>
<title>Applicant</title>
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
  
 
 <%
            try {
                //System.out.println("inside jsp try");
                String driverName = "com.mysql.jdbc.Driver";
 String ss =request.getParameter("Id");

String url = "jdbc:mysql://localhost:3306/gointerndb?zeroDateTimeBehavior=convertToNull";
String dbName = "gointerndb";
String userName = "root";
String password = "";
       Connection con = null;
       Class.forName(driverName);
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gointerndb?zeroDateTimeBehavior=convertToNull","root","");
        Statement st = con.createStatement();
        String sss =request.getParameter("Id");
        //PreparedStatement pre1 = con.prepareStatement("SELECT * FROM companylist,company WHERE companylist.clid=company.uid AND company.cid="+uiid);
String sql="SELECT photo FROM companylist WHERE clid="+sss;
//String sql ="SELECT * FROM vacancylist,companylist WHERE vacancylist.cid=companylist.clid AND vacancylist.vid="+ss;


 
 //ResultSet rs=pre1.executeQuery();
                //sql="select image from demoimage where id="+id;
                //System.out.println("sql----"+sql);
               ResultSet rs = st.executeQuery(sql);
                //rs = st.executeQuery("select image from demoimage where id='1'");
                String imgLen = "";
                while (rs.next()) {
                    imgLen = rs.getString(1);
                    //System.out.println(imgLen.length());
                    int len = imgLen.length();
                    byte[] rb = new byte[len];
                    InputStream readImg = rs.getBinaryStream(1);
                    int index = readImg.read(rb, 0, len);
                    //System.out.println("Index.........." + index);
 
                    response.reset();
                    response.setContentType("image/jpeg");
                    response.getOutputStream().write(rb, 0, len);
                    response.getOutputStream().flush();
                }
                st.close();
 
                //  response.getContentType();
            } catch (Exception e) {
                System.out.println("Error" + e);
            }
 
        %>
       <%-- <div style="border: solid 1px red; width: 435px; height: 720px; background-image: url('imgcontainer.jsp?id=1');">

       
 <img src="retrieve.jsp" >--%>
 
 
</body>

</html>
