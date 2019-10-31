<%@page import="com.ruda.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ruda.member.MemberDAO"%>
<%@page import="com.ruda.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	MemberDTO dto = new MemberDTO();
	MemberDAO memberDAO = new MemberDAO();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	int lev = Integer.parseInt(request.getParameter("lev"));
	
	dto.setId(id);
	dto.setPw(pw);
	dto.setName(name);
	dto.setEmail(email);
	dto.setPhone(phone);
	dto.setLev(lev);
	
	Connection con = DBConnector.getConnection();
	
	
	
	int result = memberDAO.memberJoin(con, dto);
	
	con.close();
	
		String message = null;
	if(result>0){
		message = "Join Success";
		request.setAttribute("msg", message);
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}else{
		message = "Join Fail";
		request.setAttribute("msg", message);
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}
			
	

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