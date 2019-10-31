<%@page import="com.ruda.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ruda.point.PointDAO"%>
<%@page import="com.ruda.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");  //<<항상 상단에 두줄 추가하고 시작
	
	PointDTO pointDTO = new PointDTO();
	PointDAO pointDAO = new PointDAO();
	
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int total = kor+eng+math;
	double avg = total/3.0;
	
	pointDTO.setName(name);
	pointDTO.setKor(kor);
	pointDTO.setEng(eng);
	pointDTO.setMath(math);
	pointDTO.setTotal(total);
	pointDTO.setAvg(avg);
	
	Connection con = DBConnector.getConnection();
	
	
	int result = pointDAO.insert(con, pointDTO);
	
	con.close();
	
	String message = "등록 실페";
	if(result>0){
		message = "등록 성공";
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
<a href="../common/common_result.jsp?message=<%=message%>">result</a>

</body>
</html>