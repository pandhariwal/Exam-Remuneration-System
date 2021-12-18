<jsp:include page="common.html" flush="true"></jsp:include>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Add New Faculty</title>
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
	width: 1340px;
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
<form name="form1" method="POST" action="showaddnewfaculty.jsp" style="margin:0px">
<input name="faculty" type="text" maxlength=20 style="position:absolute;width:200px;left:601px;top:249px;z-index:10">
<input name="fname" type="text" maxlength=20 style="position:absolute;width:200px;left:600px;top:318px;z-index:11">
<input name="lname" type="text" maxlength=20 style="position:absolute;width:200px;left:600px;top:362px;z-index:12">
<input name="contact" type="text" maxlength=12 style="position:absolute;width:200px;left:597px;top:476px;z-index:13">
<input name="mailid" type="text" maxlength=40 style="position:absolute;width:200px;left:596px;top:517px;z-index:14">
<select name="title" style="position:absolute;left:600px;top:283px;width:200px;z-index:15">
<option value=""></option>
<option value="Dr.">Dr.</option>
<option value="Mr.">Mr.</option>
<option value="Ms.">Ms.</option>
<option value="Mrs.">Mrs.</option>
</select>
<select name="designation" style="position:absolute;left:599px;top:403px;width:200px;z-index:16">
<option value=""></option>
<option value="Head Of Department">Head Of Department</option>
<option value="Associated Professor">Associated Professor</option>
<option value="Assistant Professor">Assistant Professor</option>
<option value="Visting Faculty">Visting Faculty</option>
</select>

<select name="department" style="position:absolute;left:598px;top:441px;width:200px;z-index:17">
<option value=""></option>
<option value="CS">Computer Science Engineering</option>
<option value="IT">Information Technology</option>
<option value="ET">Electronics And Telecommunication</option>
<option value="EI">Electronics And Instrumentation</option>
<option value="CE">Civil Enginnering</option>
<option value="ME">Mechanical Enginnering</option>
<option value="AS">Applied Science</option>
</select>

<input name="AddFaculty" type="submit" value="Add Faculty" style="position:absolute;left:642px;top:567px;z-index:18">
</form>

<div id="text1" style="position:absolute; overflow:hidden; left:426px; top:253px; width:179px; height:27px; z-index:2">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>FacultyID</B></font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:424px; top:288px; width:179px; height:27px; z-index:3">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Title</B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:424px; top:447px; width:179px; height:27px; z-index:4">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Department</B></font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:426px; top:323px; width:179px; height:27px; z-index:5">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>First Name</B></font></div>
</div></div>

<div id="text5" style="position:absolute; overflow:hidden; left:424px; top:365px; width:179px; height:27px; z-index:6">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Last Name</B></font></div>
</div></div>

<div id="text6" style="position:absolute; overflow:hidden; left:425px; top:404px; width:179px; height:27px; z-index:7">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Designation</B></font></div>
</div></div>

<div id="text7" style="position:absolute; overflow:hidden; left:422px; top:483px; width:179px; height:27px; z-index:8">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Contact</B></font></div>
</div></div>

<div id="text8" style="position:absolute; overflow:hidden; left:422px; top:519px; width:179px; height:27px; z-index:9">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Email ID</B></font></div>
</div></div>
<div id="text9" style="position:absolute; overflow:hidden; left:500px; top:180px; width:312px; height:60px; z-index:10">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws28">Add New Faculty</font></div>
</div></div>

</div></body>
</html>
