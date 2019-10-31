<%@page import="com.ruda.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ruda.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	int num = Integer.parseInt(request.getParameter("num"));
	PointDAO pointDAO = new PointDAO();
	Connection con = DBConnector.getConnection();
	int result = pointDAO.delete(con, num);
	
	con.close();
	
	String message = "삭제 실패";
	
	if(result>0){
		message = "삭제 성공";
		request.setAttribute("msg", message);
		request.setAttribute("path", "./pointList.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}else{
	
		response.sendRedirect("./pointList.jsp");
	}
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Point Delete Page</title>
</head>
<body>
	

</body>
</html>