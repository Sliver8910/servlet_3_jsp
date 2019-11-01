<%@page import="com.ruda.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ruda.member.MemberDAO"%>
<%@page import="com.ruda.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%
 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
	//String id = memberDTO.getId();
	Connection con = DBConnector.getConnection();
	int result = memberDAO.memberDelete(con, memberDTO);
	
	con.close();
	String message = "삭제 실패";
	
	if(result>0){
		message = "삭제 성공";
		session.invalidate();
	}
	
	request.setAttribute("msg", message);
	request.setAttribute("path", "../index.jsp");
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
 
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