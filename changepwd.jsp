<jsp:include page="common.html" flush="true"></jsp:include>
<%
		String user=(String) session.getAttribute("userid");
		if(user==null)
		{
			String str="/dbmsproj/login.jsp";
			response.sendRedirect(str);
		}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Change Admin Password</title>
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
	width: 1346px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}
</style>

</head>

<body background="images/template_main_01.jpg">

<div id="text1" style="position:absolute; overflow:hidden; left:478px; top:209px; width:443px; height:39px; z-index:1">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws28">Change User Password</font></div>
</div></div>

<form name="form1" method="Post" action="changeadminpwd.jsp" style="margin:0px">
<input name="cpwd" type="password" maxlength=20 style="position:absolute;width:200px;left:724px;top:321px;z-index:6">
<input name="npwd" type="password" maxlength=20 style="position:absolute;width:200px;left:726px;top:360px;z-index:7">
<input name="cnpwd" type="password" maxlength=20 style="position:absolute;width:200px;left:729px;top:404px;z-index:8">
<input name="changepwd" type="submit" value="Change Password" style="position:absolute;left:732px;top:465px;z-index:9">
</form>

<div id="text2" style="position:absolute; overflow:hidden; left:492px; top:324px; width:210px; height:26px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Enter Current Password</font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:494px; top:366px; width:210px; height:26px; z-index:4">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Enter New Password</font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:489px; top:409px; width:210px; height:26px; z-index:5">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Re-Enter New Password</font></div>
</div></div>


</div></body>
</html>
