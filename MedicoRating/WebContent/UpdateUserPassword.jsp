<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<title>Medico Rating</title>
<link rel="stylesheet" href="css/reset.css"/>
<link rel="stylesheet" href="css/text.css"/>
<link rel="stylesheet" href="css/960_12_col.css"/>
<link rel="stylesheet" href="css/skin1.css"/>
<link rel="stylesheet" href="css/nivo-slider.css"/>
<link rel="stylesheet" href="css/jqueryslidemenu.css"/>
<!--[if IE]>
	<link rel="stylesheet" type="text/css" media="all" href="css/ie.css"/>
    <script type="text/javascript" src="javascript/media-queries-ie.js"></script>
<![endif]-->
<script type="text/javascript" src="javascript/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="javascript/jqueryslidemenu.js"></script>
<script type="text/javascript" src="javascript/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="javascript/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="javascript/jquery.elastislide.js"></script>
<script type="text/javascript" src="javascript/custom.js"></script>
<script type="text/javascript" src="javascript/scrolltop.js"></script>
<!--Fancy box-->
<link rel="stylesheet" type="text/css" href="jquery_fancybox/jquery.fancybox.css" media="screen" />
<script type="text/javascript" src="jquery_fancybox/jquery.fancybox.js"></script>
<script type="text/javascript">
var scrollheight = $("#textup").height();

function scrolltextup(dur){
  $("#textup").animate({"top":"-=20"},{
    duration: dur,
    easing: "linear",
    complete:function(){
      $("#textup").children(":last").after("<div style='line-height:20px;'>"+
          $("#textup").children(":first").html()+"</div>");
      if($("#textup").children(":first").height() <=
           (parseInt($("#textup").css("top"))*-1)){
        $("#textup").children(":first").remove();
        $("#textup").css({"top":0});
      }
      setTimeout("scrolltextup(3000)", 500);
    }
  });
}
</script>
<script type="text/javascript">
		$(document).ready(function() {
			
			$('.fancybox').fancybox();
			
			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
			
				});
			});
			});
</script>

<!--Fancy box-->
</head>
<body>
<div id="wrapper" class="boxed">
<div class="top_navigation_container">
<div class="top_navigation">
<ul>
<li><a href="contact.jsp">Contact us</a></li>
<li><a href="about.jsp">Our company</a></li>

</ul>
</div>
<div class="top_navigation_social">
<p>Follow us</p>
<ul>
<li class="social_facebook">
<a href="https://www.facebook.com/" target="_blank">Facebook</a>
</li>
<li class="social_twitter">
<a href="https://twitter.com/?lang=en" target="_blank">Twitter</a>
</li>


</ul>
</div>
</div>
<div id="header"> 
<div class="container_12 clearfix"> 
<div class="grid_12">
<div class="logo"><a href=""><img src="images/logo.png" width="254" height="69" alt="Logo"/></a></div>

</div>
</div> 
<div class="container_12 clearfix"> 
<div class="grid_12"> 
<div id="topnav" class="jqueryslidemenu">
<ul>
<li><a href="UserHome.jsp">Home</a>

</li>

<li><a href="MyDocter.jsp">My Doctor</a></li>
<li><a href="UserSearchDocters.jsp">Search Doctors</a></li>
<li><a href="UserviewProfile.jsp">View Profile</a></li>
<li><a href="UpdateUserPassword.jsp">Update Password</a></li>
<li><a href="Logout.jsp">Logout</a></li>

</ul>

</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">

</div>
<div id="content" class="grid_9">




<h1> Change Your Password Here</h1>
</div>
<div id="content" class="grid_9">



<form action="UpdateUserPasswordDb.jsp">
<%
String a=(String)session.getAttribute("email");
System.out.println("my email"+a);
%>
<h1 align="center"><em><strong></strong></em></h1>
<div align="center">
  <table width="369" border="0">
    <tr>
      <th width="162" scope="row"><div align="left">Email Id</div></th>
      <td width="197"><input type="text" name="email" value="<%=a %>" id="textfield4" size=22/></td>
      </tr>
  
      
    <tr>
      <th width="162" scope="row"><div align="left">Current Password</div></th>
      <td width="197"><input type="password" name="oldp" id="textfield5" size=23 required/></td>
      </tr>
    <tr>
      <th width="162" scope="row"><div align="left">New Password</div></th>
      <td width="197"><input type="password" name="newp" id="textfield5" size=23 required/></td>
      </tr>
        
  </table>
</div>
<p align="center">&nbsp;</p>
  <div align="center">
    <table width="383" border="0">
      <tr>
        <th width="158" scope="row"><input type="submit" value ="Update Password" /></th>
     
        <th width="158" scope="row"><input type="reset" value ="Reset" size=10/></th>
       
      </tr>

	


    </table>	 <table width="383" border="0">
   

	
<tr>
<th></th>
<th width="158" scope="row">
<a class="fancybox fancybox.iframe" href="ForgotPassword.jsp"><i class="icon-leaf icon-white"></i><b><u>Forgot Password ?</u></b></a>
   </th>  </tr>
	
    </table>
   </div>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>



</div>
<div id="sidebar" class="grid_3">
<div class="sidebar_wrapper">
<div class="sidebar_widget">


</div>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>



</div>
<div id="sidebar" class="grid_3">
<div class="sidebar_wrapper">
<div class="sidebar_widget">


</div>
<div class="sidebar_widget">

</div>
</div>
</div>
</div>
</div>

<div id="topcontrol" style="position: fixed; bottom: 0px; right: 0px; opacity: 1; cursor: pointer;" title="To the top! To the victory!">
</div>
</div>
<script type="text/javascript">
	$('#carousel').elastislide({
		imageW  : 135,
		margin : 20,
		minItems    : 4,
		border      : 1,
	});
</script>
</body>


</html>