<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Find Update Record</title>
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
	width: 1344px;
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
		
		String fid=request.getParameter("faculty");
		String subcode=request.getParameter("subcode");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String section=request.getParameter("section");
		String sess=request.getParameter("sess");
		Connection con = null;
		Statement st = null;
		Statement st1 = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 st1=con.createStatement();
				String q="select relation.fid,first_name,last_name,relation.subcode,subname,relation.course,relation.branch,section,session.value,numpset,numpeva from relation,faculty,subject,session where faculty.fid='"+fid+"' and faculty.fid=relation.fid and relation.subcode='"+subcode+"' and relation.subcode=subject.subcode and relation.session='"+sess+"' and relation.session=session.session and relation.course='"+course+"' and relation.branch='"+branch+"' and section='"+section+"'";
				 
				ResultSet rs=st.executeQuery(q);
				if(rs.next()){
				 %>


<form name="form1" method="Post" action="showmodify2.jsp"style="margin:0px">
<input name="fac" type="text" value="<%=rs.getString(2)+" "+rs.getString(3)+" ("+rs.getString(1)+")"%>"style="position:absolute;left:706px;top:300px;width:300px;z-index:11">
<input name="faculty" type="hidden" value="<%=rs.getString(1)%>">

<input name="sub" type="text" value="<%=rs.getString(4)+" "+rs.getString(5)%>" style="position:absolute;left:706px;top:329px;width:300px;z-index:12">
<input name="subcode" type="hidden" value="<%=rs.getString(4)%>">

<input name="course" type="text" value="<%=rs.getString(6)%>" style="position:absolute;left:707px;top:360px;width:200px;z-index:13">

<input name="branch" type="text" value="<%=rs.getString(7)%>" style="position:absolute;left:706px;top:392px;width:200px;z-index:14">

<input name="section" type="text" value="<%=rs.getString(8)%>" style="position:absolute;left:707px;top:423px;width:200px;z-index:15">
<input name="se" type="text" value="<%=rs.getString(9)%>" style="position:absolute;left:707px;top:450px;width:200px;z-index:16">
<input name="sess" type="hidden" value="<%=sess%>">

<input name="papset" value="<%=rs.getInt(10)%>" type="text" maxlength=1 style="position:absolute;width:200px;left:705px;top:482px;z-index:17">
<input name="papeva" value="<%=rs.getInt(11)%>" type="text" maxlength=3 style="position:absolute;width:200px;left:705px;top:515px;z-index:18">
<%  
		}
		st.close();
		con.close();
		}catch(Exception e)
		{	e.printStackTrace();}
%>

<input name="update" type="submit" value="Update Record" style="position:absolute;left:705px;top:564px;z-index:19">
</form>

<div id="text1" style="position:absolute; overflow:hidden; left:487px; top:302px; width:210px; height:26px; z-index:2">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Faculty ID</font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:487px; top:336px; width:210px; height:26px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Subject Code</font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:486px; top:367px; width:210px; height:26px; z-index:4">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Course</font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:483px; top:396px; width:210px; height:26px; z-index:5">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Branch</font></div>
</div></div>

<div id="text5" style="position:absolute; overflow:hidden; left:482px; top:426px; width:210px; height:26px; z-index:6">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Section</font></div>
</div></div>

<div id="text6" style="position:absolute; overflow:hidden; left:482px; top:457px; width:210px; height:26px; z-index:7">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Session</font></div>
</div></div>

<div id="text7" style="position:absolute; overflow:hidden; left:481px; top:490px; width:210px; height:26px; z-index:8">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Papers Set</font></div>
</div></div>

<div id="text8" style="position:absolute; overflow:hidden; left:482px; top:519px; width:210px; height:26px; z-index:9">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws14">Papers Evaluated</font></div>
</div></div>

<div id="text9" style="position:absolute; overflow:hidden; left:569px; top:204px; width:390px; height:60px; z-index:10">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws28">Update Record Entry</font></div>
</div></div>


</div></body>
</html>
