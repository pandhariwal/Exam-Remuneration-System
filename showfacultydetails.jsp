<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Show Get Summary</title>
<body background="images/template_main_01.jpg">
<br><br><br><br><br><br><br><br><br>

<% 
		String fid=request.getParameter("faculty");
		Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 	String q="SELECT faculty.fid,title,first_name,last_name,department,subject.subcode,subname,relation.course,relation.branch,section,session.value,numpset,numpeva,amount FROM faculty,SUBJECT,relation,SESSION WHERE relation.fid='"+fid+"' AND faculty.fid=relation.fid AND relation.subcode=subject.subcode AND relation.session=session.session  GROUP BY session.session,course,branch,section";

			ResultSet rs=st.executeQuery(q);
			if(rs.next())
			{
%>
<center><h1>Faculty Report </h1>
<table border="1" align="center" "><tr>
<th>FacultyID</th>
<th>Faculty Name</th>
<th>Department</th>
<th>Subject</th>
<th>Course</th>
<th>Class</th>
<th>Session</th>
<th>Papers Set</th>
<th>Papers Evaluated</th>
<th>Amount</th></tr>
<%				rs.previous();%>  <%
				while(rs.next()){%>

<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)+" "+rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)+" "+rs.getString(10)%></td>
<td><%=rs.getString(11)%></td>
<td><%=rs.getInt(12)%></td>
<td><%=rs.getInt(13)%></td>
<td><%=rs.getInt(14) %></td></tr>
<br>
<%
				;
				}
			}
	else
	{
%>
<center><h1>No Record Found For Specified Faculty</h1>
</table>
<%
	}
	con.close();
	st.close();
	}catch(Exception e)
	{	e.printStackTrace();	}
%>

</body>
</html>