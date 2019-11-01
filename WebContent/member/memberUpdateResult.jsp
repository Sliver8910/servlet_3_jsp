<%@page import="com.ruda.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ruda.member.MemberDAO"%>
<%@page import="com.ruda.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	MemberDTO memberDTO = new MemberDTO();
	MemberDAO memberDAO = new MemberDAO();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	MemberDTO sessionDTO = (MemberDTO)session.getAttribute("dto");  //lev가 모자라므로 session에서 빼와야함

	memberDTO.setId(id);
	memberDTO.setPw(pw);
	memberDTO.setName(name);
	memberDTO.setEmail(email);
	memberDTO.setPhone(phone);
	memberDTO.setLev(sessionDTO.getLev());
	
	Connection con = DBConnector.getConnection();
	int result = memberDAO.memberUpdate(con, memberDTO);
	
	con.close();
	
	String message = "수정 실패";
	if(result>0){
		message= "수정 성공";
		session.setAttribute("dto", memberDTO);
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