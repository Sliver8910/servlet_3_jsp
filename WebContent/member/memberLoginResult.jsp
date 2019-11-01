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

String id = request.getParameter("id");
String pw = request.getParameter("pw");

memberDTO.setId(id);
memberDTO.setPw(pw);

/////////////////////////////////////////////
String check = request.getParameter("remember");


if(check !=null){
	Cookie cookie = new Cookie("id",memberDTO.getId());
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
}else{
	Cookie cookie = new Cookie("id","");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(0);
	response.addCookie(cookie);
}


MemberDAO memberDAO = new MemberDAO();
Connection con = DBConnector.getConnection();

memberDTO =  memberDAO.memberLogin(con, memberDTO);

con.close();
String message = "Login Fail";

if(memberDTO != null){

session.setAttribute("dto", memberDTO);
response.sendRedirect("../index.jsp");
/* RequestDispatcher view = request.getRequestDispatcher("../index.jsp");
view.forward(request, response); */
}else{
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