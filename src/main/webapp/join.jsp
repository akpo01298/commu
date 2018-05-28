<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
		String userid = "";
		String name = "";
		String password1;
		String password2;
		String email = "";
		int department;
		String 에러메시지 = null;
		request.setCharacterEncoding("UTF-8");
		if (request.getMethod().equals("POST")) {
			userid = request.getParameter("userid");
			name = request.getParameter("name");
			password1 = request.getParameter("password1");
			password2 = request.getParameter("password2");
			email = request.getParameter("email");
			String s = request.getParameter("department");
			department = Integer.parseInt(s);
			if (userid == null || userid.length() == 0)
				에러메시지 = "사용자 아이디를 입력하세요";
			else if (name == null || name.length() == 0)
				에러메시지 = "이름을 입력하세요";
			else if (password1 == null || password1.length() == 0)
				에러메시지 = "비밀번호1을 입력하세요";
			else if (password2 == null || password2.length() == 0)
				에러메시지 = "비밀번호2를 입력하세요";
			else if (password1.equals(password2) == false)
				에러메시지 = "비밀번호 불일치";
			else if (email == null || email.length() == 0)
				에러메시지 = "이메일 주소를 입력하세요";
		}
	%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	text-align: center;
}

input.form-control, select.form-control {
	width: 200px;
}

.header {
	padding: 50px;
	text-align: center;
	font-size: 50pt;
	background: #FFB4B4;
	font color: #FFFFFF;
}

.container {
	text-align: left;
}

.box {
	width: 100px;
	height: 200px;
	margin: 10px;
	padding: 70px;
	color: black;
	display: inline;
}

.footer {
	height: 50px;
}
</style>
</head>

<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<div class="header">
		<a class="logo" href="main.jsp" style="color: #FFFFFF">두뵹</a>
	</div>
	<nav class="navbar">
		<div class="container">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp"> <span
						class="glyphicon glyphicon-home"></span></a></li>
				<li><a href="notice.jsp">공지</a></li>
				<li><a href="board.jsp">자유게시판</a></li>
				<li><a href="img.jsp">사진</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown">모임 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="s.jsp">소형견</a></li>
						<li><a href="m.jsp">중형견</a></li>
						<li><a href="l.jsp">대형견</a></li>
					</ul>
				<li><a href="lost.jsp">유기견</a></li>
				<li><a href="up.jsp">등업</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="join.jsp"><span
						class="glyphicon glyphicon-user"></span></a></li>
			</ul>
		</div>
	</nav>
	
	<h1>회원가입</h1>
	<div class="container">

	<form method="post">
		<div class="form-group">
			<label>ID</label> <input type="text" class="form-control"
				name="userid" value="<%= userid %>" />
		</div>
		<div class="form-group">
			<label>NAME</label> <input type="text" class="form-control" name="name"
				value="<%= name %>" />
		</div>
		<div class="form-group">
			<label>PW</label> <input type="password" class="form-control"
				name="password1" />
		</div>
		<div class="form-group">
			<label>PW-CHECK</label> <input type="password" class="form-control"
				name="password2" />
		</div>
		<div class="form-group">
			<label>E-MAIL</label> <input type="email" class="form-control"
				name="email" value="<%= email %>" />
		</div>
		<p></p>
		<button type="submit" class="btn btn-primary">
			<i class="glyphicon glyphicon-ok"></i> 회원가입
		</button>
		</form>
		</div>
		
		<hr/>
		<p></p>
	<div class="footer">
		<div class="footer">Copyright ⓒ 이름. All rights reserved. 이메일</div>
	</div>
</body>
</html>