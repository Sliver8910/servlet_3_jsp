<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	/* for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("id")){
		id = cookies[i].getValue();
		break;
		} 
	}*/
	for(Cookie cookie: cookies){
		if(cookie.getName().equals("id")){
			id = cookie.getValue();
			break;
		}
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>

	<div class="container">
		<h2>Login</h2>
		<form action="./memberLoginResult.jsp">
			<div class="form-group">
				<label for="id">ID:</label> <input type="text" class="form-control"
					id="td" placeholder="Enter td" value="<%=id %>" required="required" name="id">
			</div>
			<div class="form-group">
				<label for="pw">Password:</label> <input type="password"
					class="form-control" id="pw" required="required" placeholder="Enter password" name="pw">
			</div>
			<div class="checkbox">
				<label><input type="checkbox" checked="checked" name="remember">
					Remember me</label>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>

</body>
</html>