<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>

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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String contact=request.getParameter("contact");
		String mailid=request.getParameter("mailid");
		String title=request.getParameter("title");
		String designation=request.getParameter("designation");
		String dept=request.getParameter("department");
		
			
				Connection con = null;
				Statement st = null;
				try{
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
					st=con.createStatement();
					String q="insert into faculty values('"+fid+"','"+title+"','"+fname+"','"+lname+"','"+designation+"','"+dept+"','"+contact+"','"+mailid+"')";
					int r=st.executeUpdate(q);

					if(r>0)
					{
%>
<div id="text1" style="position:absolute; overflow:hidden; left:461px; top:290px; width:535px; height:122px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Congratulations!!!!!</font></div>
<div align=center><font face="Berlin Sans FB" class="ws24"><BR></font></div>
<div align=center><font face="Berlin Sans FB" class="ws24">New Faculty Added Successfully</font></div>
</div></div>

<%
					}
				
					else
					{
%>
<div id="text2" style="position:absolute; overflow:hidden; left:461px; top:290px; width:535px; height:122px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Sorry!!!!!</font></div>
<div align=center><font face="Berlin Sans FB" class="ws24"><BR></font></div>
<div align=center><font face="Berlin Sans FB" class="ws24">Unable To Unable To Add New Faculty</font></div>
</div></div>

<% 
					}
				
				st.close();
				con.close();
		}catch(Exception e)
		{	e.printStackTrace();}
		
	%>
	</div>

</body>
</html>
