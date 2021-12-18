import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import java.lang.Thread;

public class register extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession hs=req.getSession(true);	
		String userid=req.getParameter("userid");
		String fid=req.getParameter("fid");
		String type=req.getParameter("type");
		String pwd=req.getParameter("pwd");
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
				
				r=st.executeUpdate("insert into login(userid,fid,password,type,ques,ans) values('"+userid+"','"+fid+"','"+pwd+"','"+type+"',"+i+",'"+ans+"')");
			
				if(r!=0)
				{
					out.println("<br><br>");
					out.println("<center><h1>Congratulations New Faculty Registered</h1>");
					out.println("<center><h1>Please </h1>");
					out.println("<br><br>");
				}

				else
					out.println("<h1>Sorry Unable to Register User</h1>");
							
				st.close();
				cn.close();		
				}			
				
			else
				out.println("<h1>Sorry Unable to Register User<br> The Passwords Donot Match </h1>");				
			
			//long t=233323;
			//Thread.sleep(t);
			}		
			
		catch(Exception e)
		{	out.println(e);
			out.println("<center><h1>Sorry The User Cannot Be Registered</h1><br>");
			out.println("<center><h1>Please Try Again </h1>");
		}
			
		finally{
				out.println("<center> <a href=\"login.jsp\"><h1>Click Here To Return To Login Page</h1></a>");
		}

		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}