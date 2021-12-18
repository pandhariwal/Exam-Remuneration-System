<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Show Get Summary</title>
<body  background="images/template_main_01.jpg">


<% 
		String fid=request.getParameter("faculty");
		String subcode=request.getParameter("subcode");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String section=request.getParameter("section");
		String sess=request.getParameter("sess");
		
		Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 	String q="DELETE from relation where fid='"+fid+"' and subcode='"+subcode+"' and course='"+course+"' and branch='"+branch+"' and section='"+section+"' and session='"+sess+"'";
					
					int r=st.executeUpdate(q);
					
					if(r>0)
					{

%>
<div id="text1" style="position:absolute; overflow:hidden; left:461px; top:290px; width:535px; height:122px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Congratulations!!!!!</font></div>
<div align=center><font face="Berlin Sans FB" class="ws24"><BR></font></div>
<div align=center><font face="Berlin Sans FB" class="ws24">Specified Record Has Been Deleted</font></div>
</div></div>


<%					}
	else
	{
%>
<div id="text1" style="position:absolute; overflow:hidden; left:461px; top:290px; width:535px; height:122px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Sorry!!!!!</font></div>
<div align=center><font face="Berlin Sans FB" class="ws24"><BR></font></div>
<div align=center><font face="Berlin Sans FB" class="ws24">Unable To Delete Specified Record</font></div>
</div></div>

<%
	}

	con.close();
	st.close();
	}catch(Exception e)
	{	e.printStackTrace();	}
%>

</body>
</html>