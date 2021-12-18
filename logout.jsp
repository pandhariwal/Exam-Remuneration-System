<html>
<head>
<title>Logout</title>
</head>
<body>
<%
		session.invalidate();
		String url=response.encodeRedirectURL("login.jsp");
		response.sendRedirect(url);
%>
</body>
</html>