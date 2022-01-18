<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<h2>Login</h2>
<form name="form" method="post" action="loginProcess.jsp">
<table border=1>
	<tr>
		<td>userName</td>
		<td><input type="text" name="userName"></td>
	</tr>
	<tr>
		<td>pass</td>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="submit" value="쿼리 전송">LOGIN
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>