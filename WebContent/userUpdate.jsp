<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/respons.css">
<title>MARVEL</title>
</head>
<body>
	<header>
		<%
			String userID = null;
			if (session.getAttribute("userID") != null); {
				userID = (String) session.getAttribute("userID");
			}
		%>
		<%
			if(userID == null) {
		%>
			<div id="mainMenu">
				<h1><a href="main.jsp"><img src="img/logo.png" alt=""></a></h1>
				<ul id="itemList" class="clearfix">
					<li class="menuItem">
						<a class="pointColor" href="join.jsp">sign up</a>
					</li>
					<li class="menuItem">
						<a href="login.jsp">sign in</a>
					</li>
					<li>
						<a href="bbs.jsp">board</a>
					</li>
				</ul>
				<div class="search">
					<input type="text" id="search" onkeyup="if(window.event.keyCode==13){filter()}" placeholder="search">
					<button><img src="./img/search.png" alt="검색버튼이미지" onclick=filter()></button>
				</div>
				<button id="mobileBtn" type="button" class="menuBtn" aria-label="메뉴 열기">
					<span class="btnTop"></span>
					<span class="btnMiddle"></span>
					<span class="btnBottom"></span>
				</button>
				<button id="closeBtn" type="button" class="menuClose" aria-label="메뉴 닫기">
					<span class="btnRight"></span>
					<span class="btnLeft"></span>
				</button>
			</div>
		<%
			} else {
		%>
			<div id="mainMenu">
				<h1><a href="main.jsp"><img src="img/logo.png" alt=""></a></h1>
				<ul id="itemList" class="clearfix">
					<li class="menuItem">
						<a class="pointColor" href="userUpdate.jsp">my page</a>
					</li>
					<li class="menuItem">
						<a href="logoutAction.jsp">sign out</a>
					</li>
					<li>
						<a href="bbs.jsp">board</a>
					</li>
				</ul>
				<div class="search">
					<input type="text" id="search" onkeyup="if(window.event.keyCode==13){filter()}" placeholder="search">
					<button><img src="./img/search.png" alt="검색버튼이미지" onclick=filter()></button>
				</div>
				<button id="mobileBtn" type="button" class="menuBtn" aria-label="메뉴 열기">
					<span class="btnTop"></span>
					<span class="btnMiddle"></span>
					<span class="btnBottom"></span>
				</button>
				<button id="closeBtn" type="button" class="menuClose" aria-label="메뉴 닫기">
					<span class="btnRight"></span>
					<span class="btnLeft"></span>
				</button>
			</div>
		<%
			}
		%>
		</header>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="userUpdateAction.jsp">
					<h3 style="text-align:center;">내 정보</h3>
					<div class = "form-group">
						<input type="text" class="form-control" value=<%=user.getUserID()%> name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" value=<%=user.getUserPassword()%> name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" value=<%=user.getUserName()%> name="userName" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" value=<%=user.getUserName()%> name="nickName" maxlength="20">
					</div>
					<div class="form-group" style="text-align:center;">
						<div class="btn-group" data-toggle="buttons">
						<%
							if(user.getUserGender().equals("남자")){
						%>
							<label class="btn btn-success active">
						<%
							} else{
						%>
							<label class="btn btn-success">
						<%
							}
						%>		
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
						<%
							if(user.getUserGender().equals("여자")){
						%>
								<label class="btn btn-success active">
						<%
							} else{
						%>
								<label class="btn btn-success">
						<%
							}
						%>	
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" value=<%=user.getUserEmail()%> name="userEmail" maxlength="20">
					</div>
					<input type="submit" class="btn btn-success form-control" value="수정하기"></form>
					<br>
            <form method="post" action="userDeleteAction.jsp">
            <input type="submit" class="btn btn-danger pull-right" value="탈퇴하기">
            </form>

					</div></div>
</div></div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>