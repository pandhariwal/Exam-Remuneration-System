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
<title>Change Faculty Password</title>
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

<body background="images/template_main_01.jpg">

<div id="text1" style="position:absolute; overflow:hidden; left:478px; top:209px; width:443px; height:39px; z-index:1">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws28">Change User Password</font></div>
</div></div>

<form name="form1" method="Post" action="showchangefacultypwd.jsp" style="margin:0px">
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


<div id="nav10d" style="position:absolute; left:12px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav10','','images/nav6370880310a.gif',1)" href="facultyhome.jsp"><img name="nav10" onLoad="MM_preloadImages('images/nav6370880310a.gif')" alt="" border=0 src="images/nav6370880310i.gif"></a></div>
<div id="nav11d" style="position:absolute; left:202px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav11','','images/nav6370880311a.gif',1)" href="getdetails.jsp"><img name="nav11" onLoad="MM_preloadImages('images/nav6370880311a.gif')" alt="" border=0 src="images/nav6370880311i.gif"></a></div>
<div id="nav12d" style="position:absolute; left:392px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav12','','images/nav6370880312a.gif',1)" href="sessiondetails.jsp"><img name="nav12" onLoad="MM_preloadImages('images/nav6370880312a.gif')" alt="" border=0 src="images/nav6370880312i.gif"></a></div>
<div id="nav13d" style="position:absolute; left:582px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav13','','images/nav6370880313a.gif',1)" href="overalldetails.jsp"><img name="nav13" onLoad="MM_preloadImages('images/nav6370880313a.gif')" alt="" border=0 src="images/nav6370880313i.gif"></a></div>
<div id="nav14d" style="position:absolute; left:772px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav14','','images/nav6370880314a.gif',1)" href="facultyprofileupdate.jsp"><img name="nav14" onLoad="MM_preloadImages('images/nav6370880314a.gif')" alt="" border=0 src="images/nav6370880314i.gif"></a></div>
<div id="nav15d" style="position:absolute; left:962px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav15','','images/nav6370880315a.gif',1)" href="changefacultypwd.jsp"><img name="nav15" onLoad="MM_preloadImages('images/nav6370880315a.gif')" alt="" border=0 src="images/nav6370880315i.gif"></a></div>
<div id="nav16d" style="position:absolute; left:1152px; top:136px; z-index:0"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav16','','images/nav6370880316a.gif',1)" href="logout.jsp"><img name="nav16" onLoad="MM_preloadImages('images/nav6370880316a.gif')" alt="" border=0 src="images/nav6370880316i.gif"></a></div>

<div id="image1" style="position:absolute; overflow:hidden; left:303px; top:0px; width:734px; height:106px; z-index:1"><img src="images/Banner1.png" alt="" title="" border=0 width=734 height=106></div>

<div id="hr1" style="position:absolute; overflow:hidden; left:0px; top:106px; width:1344px; height:17px; z-index:2">
<hr size=2 width=1344>
</div></body>
</html>
