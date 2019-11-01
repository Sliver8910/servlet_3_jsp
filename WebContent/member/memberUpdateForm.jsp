<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>

<div class="container">
  <h2>회원정보 수정</h2>
  <form action="./memberUpdateResult.jsp">
  <input type="text" value="<%=memberDTO.getId() %>" id="id" name="id" readonly="readonly" hidden="">
  <input type="text" value="<%=memberDTO.getLev() %>" id="lev" name="lev" readonly="readonly" hidden="">
    <div class="form-group">
      <label for="pw">Password:</label>
      <input type="password" required="required" value="<%=memberDTO.getPw() %>" class="form-control" id="pw" placeholder="Enter password" name="pw">
    </div>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" required="required" class="form-control" value="<%=memberDTO.getName() %>" id="name" placeholder="Enter name" name="name">
    </div>
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="tel" class="form-control" required="required" value="<%=memberDTO.getPhone() %>" id="phone" placeholder="Enter phone" name="phone">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" required="required" id="email" value="<%=memberDTO.getEmail() %>" placeholder="Enter email" name="email">
    </div>

    <button type="submit" class="btn btn-default">회원정보 수정</button>
  </form>
</div>

</body>
</html>