<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>FacultyHome</title>
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
	width: 1354px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}
</style>

<script src="ac_activex.js" type="text/javascript"></script>


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
		if(user==null)
		{
			String str="/dbmsproj/login.jsp";
			response.sendRedirect(str);
		}
		String fname=null,lname=null,fid=null;
		Date dat =new Date();
		Date time=new Date(session.getCreationTime());
		Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 String q="select first_name,last_name,faculty.fid from faculty,login where login.userid='"+user+"' and faculty.fid=login.fid";
				ResultSet rs=st.executeQuery(q);
				if(rs.next()){
					fname=rs.getString(1);
					lname=rs.getString(2);
					fid=rs.getString(3);
				}
				String name=fname+" "+lname;
				session.setAttribute("fid",fid);
%>
<div id="container">
<div id="image1" style="position:absolute; overflow:hidden; left:0px; top:0px; width:1346px; height:641px; z-index:0"><img src="images/template_main_01.jpg" alt="" title="" border=0 width=1346 height=641></div>

<div id="slideshow1" style="position:absolute; overflow:hidden; left:309px; top:257px; width:486px; height:271px; z-index:1">
<script type="text/javascript">
AC_RunFlashContent('width','486','height','271','quality','high','autoplay','true','loop','true','wmode','opaque','FlashVars','bcastr_xml_url=images/slideshow632208515.xml&AutoPlayTime=5','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab','pluginspage','http://www.macromedia.com/go/getflashplayer','src','images/bcastr31.swf');
</script>
<noscript>
<object width=486 height=271 classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">
<param name="movie" value="images/bcastr31.swf">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="opaque">
<param name="autoplay" value="true">
<param name="FlashVars" value="bcastr_xml_url=images/slideshow632208515.xml&AutoPlayTime=5">
<embed src="images/bcastr31.swf" width=486 height=271 quality="high" TYPE="application/x-shockwave-flash" wmode="opaque" FlashVars="bcastr_xml_url=images/slideshow632208515.xml&AutoPlayTime=5" loop="true" autoplay="true" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
</object>
</noscript>
</div>

<div id="text1" style="position:absolute; overflow:hidden; left:911px; top:225px; width:398px; height:41px; z-index:2">
<div class="wpmd">
<div><font face="Berlin Sans FB" class="ws24">Welcome :<%=name%> </font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:915px; top:270px; width:398px; height:23px; z-index:3">
<div class="wpmd">
<div><font face="Berlin Sans FB" class="ws14">Login Time :<%=time%></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:915px; top:302px; width:398px; height:23px; z-index:4">
<div class="wpmd">
<div><font face="Berlin Sans FB" class="ws14">Time : <%=dat%></font></div>
</div></div>

<div id="image2" style="position:absolute; overflow:hidden; left:313px; top:10px; width:734px; height:106px; z-index:5"><img src="images/Banner1.png" alt="" title="" border=0 width=734 height=106></div>

<div id="hr1" style="position:absolute; overflow:hidden; left:10px; top:116px; width:1344px; height:17px; z-index:6">
<hr size=2 width=1344>
</div>

<div id="nav10d" style="position:absolute; left:12px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav10','','images/Faculty/nav6386220930a.gif',1)" href="facultyhome.jsp"><img name="nav10" onLoad="MM_preloadImages('images/Faculty/nav6386220930a.gif')" alt="" border=0 src="images/Faculty/nav6386220930i.gif"></a></div>
<div id="nav11d" style="position:absolute; left:202px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav11','','images/Faculty/nav6386220931a.gif',1)" href="getdetails.jsp"><img name="nav11" onLoad="MM_preloadImages('images/Faculty/nav6386220931a.gif')" alt="" border=0 src="images/Faculty/nav6386220931i.gif"></a></div>
<div id="nav12d" style="position:absolute; left:392px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav12','','images/Faculty/nav6386220932a.gif',1)" href="sessiondetails.jsp"><img name="nav12" onLoad="MM_preloadImages('images/Faculty/nav6386220932a.gif')" alt="" border=0 src="images/Faculty/nav6386220932i.gif"></a></div>
<div id="nav13d" style="position:absolute; left:582px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav13','','images/Faculty/nav6386220933a.gif',1)" href="overalldetails.jsp"><img name="nav13" onLoad="MM_preloadImages('images/Faculty/nav6386220933a.gif')" alt="" border=0 src="images/Faculty/nav6386220933i.gif"></a></div>
<div id="nav14d" style="position:absolute; left:772px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav14','','images/Faculty/nav6386220934a.gif',1)" href="facultyprofileupdate.jsp"><img name="nav14" onLoad="MM_preloadImages('images/Faculty/nav6386220934a.gif')" alt="" border=0 src="images/Faculty/nav6386220934i.gif"></a></div>
<div id="nav15d" style="position:absolute; left:962px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav15','','images/Faculty/nav6386220935a.gif',1)" href="changefacultypwd.jsp"><img name="nav15" onLoad="MM_preloadImages('images/Faculty/nav6386220935a.gif')" alt="" border=0 src="images/Faculty/nav6386220935i.gif"></a></div>
<div id="nav16d" style="position:absolute; left:1152px; top:136px; z-index:9"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav16','','images/Faculty/nav6386220936a.gif',1)" href="logout.jsp"><img name="nav16" onLoad="MM_preloadImages('images/Faculty/nav6386220936a.gif')" alt="" border=0 src="images/Faculty/nav6386220936i.gif"></a></div>

</div>
<%				st.close();
				con.close();
		}catch(Exception e)
			{	e.printStackTrace();	}
%>
</body>
</html>
