<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width" , initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/respons.css">
	<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null); {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<header>
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
		<div class="signContent boardContent">
			<h2>게시판 글쓰기</h2>
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped writeText">
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle"
									maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048"
									style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<div class="boardBtnArea">
					<input type="submit" class="btn btn-primary pull-right boardBtn" value="글쓰기">
				</div>
				
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>

</html>