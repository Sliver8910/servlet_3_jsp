<%@page import="com.ruda.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ruda.point.PointDAO"%>
<%@page import="com.ruda.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	PointDTO pointDTO = new PointDTO();
	PointDAO pointDAO = new PointDAO();
	
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int total = kor+eng+math;
	double avg = total/3.0;
	
	pointDTO.setNum(num);
	pointDTO.setName(name);
	pointDTO.setKor(kor);
	pointDTO.setEng(eng);
	pointDTO.setMath(math);
	pointDTO.setTotal(total);
	pointDTO.setAvg(avg);
	
	Connection con = DBConnector.getConnection();
	
	int result = pointDAO.update(con, pointDTO);
	
	con.close();
	
	String message= "업데이트 실패";
	if(result>0){
		message = "업데이트 성공";
	}
	
	String path = "/servlet_3_jsp/point/pointList.jsp";
	
	request.setAttribute("msg", message);
	request.setAttribute("path", path); //보내는 파일의 경로를 기준으로 주소를 보내야함 ./pointList.jsp
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
	
	
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Point Update Result</title>
</head>
<body>


</body>
</html>