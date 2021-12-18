import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;

public class logincheck extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{

		String userid=req.getParameter("userid");
		String type=req.getParameter("type");
		String pwd=req.getParameter("pwd");
		HttpSession hs=req.getSession();
		String str=new String();

		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		int i,r;
		out.println("<html>");
		out.println("<head></head>");
		out.println("<body>");
		try
		{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			Statement st=cn.createStatement();
							
			String query="select * from login where userid='"+userid+"' AND type='"+type+"'";
			
				ResultSet rs=st.executeQuery(query);
				if(rs.next())
				{
					String pass=rs.getString(3);
					if(pass.equals(pwd))
					{
						if(hs.isNew())
						{
							
							if(type.equals("a"))
								str="/dbmsproj/adminhome.jsp";			
							
							else if(type.equals("f"))
								str="/dbmsproj/facultyhome.jsp";
						
							hs.setAttribute("userid",userid);	
							String url=res.encodeRedirectURL(str);
							res.sendRedirect(url);							
						}				
					}

					else
						out.println("<center><h1>Sorry You Have Entered Wrong Password</h1>"); 
				}

				else
				{
					out.println("<center><h1>Sorry You Have Entered Wrong Username Or Type</h1>"); 
				}

					out.println("<center><h1>Please Try Again</h1>");
					out.println("<center> <a href=\"login.jsp\"><h1>Click here to go To Login Page</h1></a>");							
				st.close();
				cn.close();			
		}catch(Exception e)
		{	
			out.println("<center><h1>Some Error Occured</h1>");
			out.println(e);
			out.println("<center> <a href=\"login.jsp\"><h1>Click here to go To Login Page</h1></a>");
		}		
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}