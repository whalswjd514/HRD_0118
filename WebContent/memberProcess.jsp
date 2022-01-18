<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	String userName=request.getParameter("userName");
	String password=request.getParameter("password");
	String nickname=request.getParameter("nickname");
	
	try{
		String sql="insert into member0118 values(?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userName);
		pstmt.setString(2, password);
		pstmt.setString(3, nickname);
		pstmt.executeUpdate();
		System.out.println("데이터 등록 성공");
%>
		<script>
			alert("데이터 등록을 성공하였습니다!");
			history.back(-1);
		</script>
<%
	}catch(SQLException e){
		System.out.println("데이터 등록 실패");
		e.printStackTrace();
	}
%>
		<script>
			alert("데이터 등록을 실패하였습니다!");
			history.back(-1);
		</script>
</body>
</html>