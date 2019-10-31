<%@page import="com.ruda.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	PointDTO pointDTO = (PointDTO)request.getAttribute("dto"); //obj타입으로 받아와서 pointerDTO로 형변환
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Point Select Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../layout/nav.jsp" %>
	<div class="container">
		<div class="jumbotron">
			<h1>Point Select Page</h1>
			<ul>
				<li>번호 : <%=pointDTO.getNum()%></li>
				<li>이름 : <%=pointDTO.getName()%></li>
				<li>국어점수 : <%=pointDTO.getKor()%></li>
				<li>영어점수 : <%=pointDTO.getEng()%></li>
				<li>수학점수 : <%=pointDTO.getMath()%></li>
				<li>총점 :<%=pointDTO.getTotal()%></li>
				<li>평균 :<%=pointDTO.getAvg()%></li>
			
			</ul>
		</div>
		<div>
			<a href="./pointUpdate.jsp?num=<%=pointDTO.getNum() %>" class="btn btn-danger">Update</a>
			<a href="./pointDeleteResult.jsp?num=<%=pointDTO.getNum() %>" class="btn btn-primary">Delete</a>
		
		</div>
	</div>


</body>
</html>