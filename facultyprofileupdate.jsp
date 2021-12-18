<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Faculty Profile Update </title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
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


<script language="JavaScript1.4" type="text/javascript">
<!--
function jsPlay(soundobj) {
 var thissound= eval("document."+soundobj);
 try {
     thissound.Play();
 }
 catch (e) {
     thissound.DoPlay();
 }
}
//-->
</script>

<script language="javascript" type="text/javascript">
<!--
function MM_swapImgRestore() {
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() {
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) {
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() {
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

//-->
</script>

</head>

<body>
<% 
		String user=(String) session.getAttribute("userid");
		String fid=(String) session.getAttribute("fid");
		if(user==null)
		{
			String str="/dbmsproj/login.jsp";
			response.sendRedirect(str);
		}
		Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 String q="select first_name,last_name,designation,department,contact,email_id from faculty where fid='"+fid+"'";
				 ResultSet rs=st.executeQuery(q);
				 while(rs.next()){
%>
<div id="image2" style="position:absolute; overflow:hidden; left:0px; top:0px; width:1350px; height:643px; z-index:0"><img src="images/template_main_01.jpg" alt="" title="" border=0 width=1350 height=643></div>

<div id="text1" style="position:absolute; overflow:hidden; left:532px; top:200px; width:310px; height:38px; z-index:1">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Update Profile</font></div>
</div></div>

<form name="form1" method="Post" action="updatefacultyprofile.jsp"style="margin:0px">
<input name="fname" type="text" value="<%=rs.getString(1)%>" maxlength=20 style="position:absolute;width:200px;left:678px;top:259px;z-index:4">
<input name="lname" type="text" value="<%=rs.getString(2)%>" maxlength=20 style="position:absolute;width:200px;left:678px;top:295px;z-index:6">
<select name="designation" style="position:absolute;left:679px;top:329px;width:200px;z-index:11">
<option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
<option value="Head Of Department">Head Of Department</option>
<option value="Associated Professor">Associated Professor</option>
<option value="Assistant Professor">Assistant Professor</option>
<option value="Visting Faculty">Visting Faculty</option>
</select>
<select name="dept" style="position:absolute;left:679px;top:366px;width:200px;z-index:12">
<option value="<%=rs.getString(4)%>"><%=rs.getString(4)%></option>
<option value="CS">Computer Science Engineering</option>
<option value="IT">Information Technology</option>
<option value="ET">Electronics And Telecommunication</option>
<option value="EI">Electronics And Instrumentation</option>
<option value="CE">Civil Enginnering</option>
<option value="ME">Mechanical Enginnering</option>
<option value="AS">Applied Science</option>
</select>
<input name="contact" type="text" value="<%=rs.getString(5)%>" maxlength=12 style="position:absolute;width:200px;left:677px;top:402px;z-index:13">
<input name="email" type="text" value="<%=rs.getString(6)%>" maxlength=40 style="position:absolute;width:200px;left:677px;top:440px;z-index:14">
<% 
	}
			st.close();
			con.close();
		}catch(Exception e)
		{	e.printStackTrace();}
	%>
<input name="update profile" type="submit" value="Update Profile" style="position:absolute;left:679px;top:489px;z-index:15">

</form>

<div id="text2" style="position:absolute; overflow:hidden; left:514px; top:263px; width:135px; height:20px; z-index:3">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>First Name</B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:510px; top:298px; width:137px; height:27px; z-index:5">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Last Name</B></font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:506px; top:333px; width:160px; height:27px; z-index:7">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Designation</B></font></div>
</div></div>

<div id="text5" style="position:absolute; overflow:hidden; left:507px; top:369px; width:152px; height:27px; z-index:8">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Department</B></font></div>
</div></div>

<div id="text6" style="position:absolute; overflow:hidden; left:513px; top:406px; width:131px; height:23px; z-index:9">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Contact</B></font></div>
</div></div>

<div id="text7" style="position:absolute; overflow:hidden; left:507px; top:440px; width:144px; height:27px; z-index:10">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Email ID</B></font></div>
</div></div>

<div id="image1" style="position:absolute; overflow:hidden; left:313px; top:10px; width:734px; height:106px; z-index:17"><img src="images/Banner1.png" alt="" title="" border=0 width=734 height=106></div>

<div id="hr1" style="position:absolute; overflow:hidden; left:10px; top:116px; width:1344px; height:17px; z-index:18">
<hr size=2 width=1344>
</div>

<div id="nav10d" style="position:absolute; left:22px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav10','','images/Faculty/nav6410521400a.gif',1)" href="facultyhome.jsp"><img name="nav10" onLoad="MM_preloadImages('images/Faculty/nav6410521400a.gif')" alt="" border=0 src="images/Faculty/nav6410521400i.gif"></a></div>
<div id="nav11d" style="position:absolute; left:212px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav11','','images/Faculty/nav6410521401a.gif',1)" href="getdetails.jsp"><img name="nav11" onLoad="MM_preloadImages('images/Faculty/nav6410521401a.gif')" alt="" border=0 src="images/Faculty/nav6410521401i.gif"></a></div>
<div id="nav12d" style="position:absolute; left:402px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav12','','images/Faculty/nav6410521402a.gif',1)" href="sessiondetails.jsp"><img name="nav12" onLoad="MM_preloadImages('images/Faculty/nav6410521402a.gif')" alt="" border=0 src="images/Faculty/nav6410521402i.gif"></a></div>
<div id="nav13d" style="position:absolute; left:592px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav13','','images/Faculty/nav6410521403a.gif',1)" href="overalldetails.jsp"><img name="nav13" onLoad="MM_preloadImages('images/Faculty/nav6410521403a.gif')" alt="" border=0 src="images/Faculty/nav6410521403i.gif"></a></div>
<div id="nav14d" style="position:absolute; left:782px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav14','','images/Faculty/nav6410521404a.gif',1)" href="facultyprofileupdate.jsp"><img name="nav14" onLoad="MM_preloadImages('images/Faculty/nav6410521404a.gif')" alt="" border=0 src="images/Faculty/nav6410521404i.gif"></a></div>
<div id="nav15d" style="position:absolute; left:972px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav15','','images/Faculty/nav6410521405a.gif',1)" href="changefacultypwd.jsp"><img name="nav15" onLoad="MM_preloadImages('images/Faculty/nav6410521405a.gif')" alt="" border=0 src="images/Faculty/nav6410521405i.gif"></a></div>
<div id="nav16d" style="position:absolute; left:1162px; top:146px; z-index:19"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav16','','images/Faculty/nav6410521406a.gif',1)" href="logout.jsp"><img name="nav16" onLoad="MM_preloadImages('images/Faculty/nav6410521406a.gif')" alt="" border=0 src="images/Faculty/nav6410521406i.gif"></a></div>

</body>
</html>
