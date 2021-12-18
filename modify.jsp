<jsp:include page="common.html" flush="true"></jsp:include>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Update Details</title>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<meta name="generator" content="Web Page Maker">

<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: 'Arial';font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
</style>

<style type="text/css">
div#container
{
	position:relative;
	width: 1345px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}
</style>

</head>

<body background="images/template_main_01.jpg">
<%
		String user=(String) session.getAttribute("userid");
		if(user==null)
		{
			String str="/dbmsproj/login.jsp";
			response.sendRedirect(str);
		}%>

<div id="nav20d" style="position:absolute; left:259px; top:239px; z-index:1"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav20','','images/Admin/nav5905922030a.gif',1)" href="modify1.jsp"><img name="nav20" onLoad="MM_preloadImages('images/Admin/nav5905922030a.gif')" alt="" border=0 src="images/Admin/nav5905922030i.gif"></a></div>
<div id="nav21d" style="position:absolute; left:259px; top:287px; z-index:1"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav21','','images/Admin/nav5905922031a.gif',1)" href="modify2.jsp"><img name="nav21" onLoad="MM_preloadImages('images/Admin/nav5905922031a.gif')" alt="" border=0 src="images/Admin/nav5905922031i.gif"></a></div>
<div id="nav22d" style="position:absolute; left:259px; top:335px; z-index:1"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav22','','images/Admin/nav5905922032a.gif',1)" href="modify3.jsp"><img name="nav22" onLoad="MM_preloadImages('images/Admin/nav5905922032a.gif')" alt="" border=0 src="images/Admin/nav5905922032i.gif"></a></div>


</div></body>
</html>
