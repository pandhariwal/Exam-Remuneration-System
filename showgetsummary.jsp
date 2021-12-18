<jsp:include page="common.html" flush="true"></jsp:include>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Show Get Summary</title>
<body background="images/template_main_01.jpg">

<br><br><br><br><br><br><br><br><br>

<% 
		String sess=request.getParameter("sess");
		String subcode=request.getParameter("subcode");
//		out.println(sess+" "+subcode);
		
			Connection con = null;
		Statement st = null;
		 try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				 st=con.createStatement();
				 	String q="select title,first_name,last_name,department,subject.subcode,subname,relation.course,relation.branch,section,session.value,numpset,numpeva,amount from faculty,subject,relation,session where relation.subcode='"+subcode+"' and relation.session='"+sess+"' and faculty.fid=relation.fid and relation.subcode=subject.subcode and relation.session=session.session";
			ResultSet rs=st.executeQuery(q);
			if(rs.next())
			{
%>
<center><h1>Session-Subject Report </h1>
<table border="1" align="center" "><tr>
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
<td><%=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)+" "+rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)+" "+rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
<td><%=rs.getInt(11)%></td>
<td><%=rs.getInt(12)%></td>
<td><%=rs.getInt(13) %></td></tr>
<br>
<%
				;
				}
			}
	else
	{
%>
<center><h1>No Record Found </h1>
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