<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Session Summary</title>
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
	width: 1356px;
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
		}
		Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
%>

<div id="text3" style="position:absolute; overflow:hidden; left:704px; top:257px; width:179px; height:27px; z-index:4">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Select Faculty</B></font></div>
</div></div>

<div id="text1" style="position:absolute; overflow:hidden; left:323px; top:260px; width:179px; height:27px; z-index:5">
<div class="wpmd">
<div align=center><font face="@FangSong" class="ws14"><B>Select Session</B></font></div>
</div></div>

<form name="form1" method="post" action="showsessionsummary.jsp"style="margin:0px">
<select name="sess" style="position:absolute;left:310px;top:278px;width:200px;z-index:2">
<option value=""></option>
<% 
	String q=null; 
	q="select * from session";
	ResultSet rs=st.executeQuery(q);
	while(rs.next()){
%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<% }%>
</select>

<select name="faculty" style="position:absolute;left:641px;top:279px;width:313px;z-index:3">
<option value=""></option>
<%
		q="select fid,first_name,last_name from faculty Order BY first_name";
		rs=st.executeQuery(q);
		while(rs.next()){
%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)+" "+rs.getString(3)+" ("+rs.getString(1)+")"%></option>

<%  
		}
		st.close();
		con.close();
		}catch(Exception e)
		{	e.printStackTrace();}
%>
</select>

<input name="getsummary" type="submit" value="  Get Sessional Summary  " style="position:absolute;left:698px;top:355px;z-index:6">
</form>


</div></body>
</html>
