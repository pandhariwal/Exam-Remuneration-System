<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>AdminHome</title>
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

</head>

<body background="images/template_main_01.jpg">
<% 
		String user=(String) session.getAttribute("userid");
		if(user==null)
		{
			String str="/dbmsproj/login.jsp";
			response.sendRedirect(str);
		}
		String fname=null,lname=null;
		Date dat =new Date();
		Date time=new Date(session.getCreationTime());
		Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 String q="select first_name,last_name from faculty,login where login.userid='"+user+"' and faculty.fid=login.fid";
				ResultSet rs=st.executeQuery(q);
				if(rs.next()){
					fname=rs.getString(1);
					lname=rs.getString(2);
				}
				String name=fname+" "+lname;
%>

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

<%				st.close();
				con.close();
		}catch(Exception e)
			{	e.printStackTrace();	}
%>
</body>
</html>
