<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//session.setAttribute("dto", null);  // dto 값에 null을 넣음
	//session.removeAttribute("dto");   //세션 삭제
	session.invalidate();   //세션은 일정 시간이 지나면 종료되므로 시간을 0 으로 만들어버림
	response.sendRedirect("../index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>