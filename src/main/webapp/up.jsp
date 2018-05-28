<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.header {
	padding: 50px;
	text-align: center;
	font-size: 50pt;
	background: #FFB4B4;
	font color: #FFFFFF;
}

.container {

}

.box {
	width: 100px;
	height: 200px;
	margin: 10px;
	padding: 70px;
	color: black;
	display: inline;
}
.board{
	margin: 50px;
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
				<li class="active"><a href="up.jsp">등업</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="join.jsp"><span
						class="glyphicon glyphicon-user"></span></a></li>
			</ul>
		</div>
	</nav>
	<div class="board" style="text-align: left">
		<h2 style="text-align: center;">등업</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th></th>
					<th>*등업방법*</th>
					<th>관리자</th>
					<th>2018.05.23</th>
					<th>100</th>
				</tr>

				<tr>
					<td>2</td>
					<td>등업합니다</td>
					<td>비회원</td>
					<td>2018.05.23</td>
					<td>1</td>
				</tr>

				<tr>
					<td>1</td>
					<td>등업합니다</td>
					<td>비회원</td>
					<td>2018.05.23</td>
					<td>0</td>
				</tr>
			</tbody>	
			
		</table>
	</div>
	
	<p></p>
	<hr/>
	<div class="footer">
		<div class="footer">Copyright ⓒ 이름. All rights reserved. 이메일</div>
	</div>
</body>
</html>