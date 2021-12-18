import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;

public class pwdreset extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{

		String user=req.getParameter("user");
		String fid=req.getParameter("fid");
		String type=req.getParameter("type");
		String pwd=req.getParameter("npwd");
		String cpwd=req.getParameter("cpwd");
		String ques=req.getParameter("ques");
		String ans=req.getParameter("ans");
		
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		int i,r;
		out.println("<html>");
		out.println("<head></head>");
		out.println("<body>");
		try
		{	
		
			i=Integer.parseInt(ques);
			
			if(pwd.equals(cpwd))
			{			
				Class.forName("com.mysql.jdbc.Driver");
				Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
				Statement st=cn.createStatement();
				
				
				String query="select * from login where userid='"+user+"' AND fid='"+fid+"' AND type='"+type+"' AND ques='"+ques+"' AND ans='"+ans+"'";
			
				ResultSet rs=st.executeQuery(query);
				if(rs.next())
					query="update login set password='"+pwd+"' where userid='"+user+"' AND fid='"+fid+"'";
					r=st.executeUpdate(query);
						if(r>0)
						{
							out.println("<br><br>");
							out.println("<center><h1>Congratulations Password Reset Successful</h1>");
							out.println("<br><br>");
						}
				else
					out.println("<center><h1>Sorry The Question/Answer is Incorrect</h1>");
							
				st.close();
				cn.close();		
			}			
			else
					out.println("<center><h1>Sorry Unable to Reset Password<br> The passwords donot match </h1>");		

		}catch(Exception e)
		{	out.println(e);
			out.println("<center><h1>Some Error Occured</h1>");
			out.println("<center><h1>Password Cannot Be Reset</h1>");	}
			
			
		finally{
			out.println("<center> <a href=\"login.jsp\"><h1>Click here to go To Login Page</h1></a>");
		}
		out.println("</body>");
		out.println("</html>");

		out.close();
	}
}