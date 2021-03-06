<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>민정이의 사용자 등록 폼</title>
<style>
section h3{
	text-align:center;
	font-size:2em;
}
#tab1{
	width:15%;
	height:20px;
	text-align:center;
	font-weight:bold;
	margin:0 auto;
}
</style>
<script>
	function check(){
		if(document.form.userName.value==""){
			alert("userName을 입력하세요.");
			document.form.userName.focus();
		}else if(document.form.password.value==""){
			alert("Password를 입력하세요.");
			document.form.pass.focus();
		}else if(document.form.nickname.value==""){
			alert("별명을 입력하세요.");
			document.form.nickname.focus();
		}else{
			document.form.submit();
		}
	}
</script>
</head>
<body>
<section>
	<h3>사용자 등록 화면</h3>
	<form name="form" method="post" action="memberProcess.jsp">
	<table border=1 id="tab1">
	<tr>
		<th>userName</th>
		<td><input type="text" name="userName"></td>
	</tr>
	<tr>
		<th>Password</th>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td>별 명</td>
		<td><input type="text" name="nickname"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="button" value="등록" onclick="check()">
		</td>
	</tr>
	</table>
	</form>
</section>
</body>
</html>