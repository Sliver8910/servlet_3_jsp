<%@page import="com.ruda.member.MemberDTO"%>
<%
MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");


%>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="<%=request.getContextPath() %>/index.jsp">Home</a></li>
				<li class=><a href="<%=request.getContextPath() %>/point/pointList.jsp">Point</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="<%=request.getContextPath() %>/notice/noticeList.jsp">Notice</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<% if(memberDTO !=null){ %>
				<li><a href="<%=request.getContextPath() %>/member/memberMypage.jsp"><span class="glyphicon glyphicon-user"></span>
						My Page</a></li>
				<li><a href="<%=request.getContextPath() %>/member/memberLogout.jsp"><span class="glyphicon glyphicon-log-out"></span>
						Logout</a></li>
			<%}else{ %>
				<li><a href="<%=request.getContextPath() %>/member/memberJoinForm.jsp"><span class="glyphicon glyphicon-user"></span>
						Sign up</a></li>
				<li><a href="<%=request.getContextPath() %>/member/memberLoginForm.jsp"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			<%} %>
			</ul>
		</div>
	</nav>

