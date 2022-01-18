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
	ResultSet rs=null;
	String userName=request.getParameter("userName");
	String password=request.getParameter("password");
	String t_userName="", t_pass="", nname="";
	
	try{
		String sql="select userName,password,nickname from member0118 where userName=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userName);
		rs=pstmt.executeQuery();
		if(rs.next()){
			t_userName=rs.getString(1);
			t_pass=rs.getString(2);
			nname=rs.getString(3);
			if(password.equals(t_pass)){
				String nickname="";
				%>
				<script>
					var nname="<%=nname %>";
					console.log(nname);
					alert(nname+"님이 로그인 되었습니다.");
				</script>
				<%
			}else{
				%>
				<script>
					alert("패스워드가 일치하지 않습니다.");
					history.back(-1);
				</script>
				<%
			}
		}else{
			%>
				<script>
					alert("등록되지 않은 사용자입니다.");
					history.back(-1);
				</script>
			<%
		}
	}catch(SQLException e){
		System.out.println("회원 조회 에러");
		e.printStackTrace();
	}
%>
</body>
</html>