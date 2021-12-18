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
		int numpset =Integer.parseInt(request.getParameter("papset"));
		int numpeva =Integer.parseInt(request.getParameter("papeva"));
		int pstamt=0,minevaamt=0,percpyamt=0,amount=0;
		Connection con = null;
		Statement st = null;

		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
					String q="select pstamt,minevaamt,percpyevamt from scheme where course='"+course+"'";
					ResultSet rs=st.executeQuery(q);
					if(rs.next())
					{
						pstamt=rs.getInt(1);
						minevaamt=rs.getInt(2);
						percpyamt=rs.getInt(3);
					}
					
						if(minevaamt>(percpyamt*numpeva))
							amount=minevaamt+numpset*pstamt;
							
						else
							amount=percpyamt*numpeva+numpset*pstamt;

				 q="UPDATE relation SET numpset="+numpset+", numpeva="+numpeva+", amount="+amount+" where fid='"+fid+"' and subcode='"+subcode+"' and course='"+course+"' and session='"+sess+"'and branch='"+branch+"' and section='"+section+"'";
					
					int r=st.executeUpdate(q);
					
					if(r>0)
					{

%>
<div id="text1" style="position:absolute; overflow:hidden; left:461px; top:290px; width:535px; height:122px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Congratulations!!!!!</font></div>
<div align=center><font face="Berlin Sans FB" class="ws24"><BR></font></div>
<div align=center><font face="Berlin Sans FB" class="ws24">Specified Record Has Been Updated</font></div>
</div></div>


<%					}
	else
	{
%>
<div id="text1" style="position:absolute; overflow:hidden; left:461px; top:290px; width:535px; height:122px; z-index:3">
<div class="wpmd">
<div align=center><font face="Berlin Sans FB" class="ws24">Sorry!!!!!</font></div>
<div align=center><font face="Berlin Sans FB" class="ws24"><BR></font></div>
<div align=center><font face="Berlin Sans FB" class="ws24">Unable To Update Specified Record</font></div>
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