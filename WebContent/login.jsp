<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/respons.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<header>
        <div id="mainMenu">
			<h1><a href="main.jsp"><img src="img/logo.png" alt=""></a></h1>
            <ul id="itemList" class="clearfix">
                <li class="menuItem">
                    <a class="pointColor" href="join.jsp">sign up</a>
                </li>
                <li class="menuItem">
                    <a href="login.jsp">sign in</a>
                </li>
				<li><a href="bbs.jsp">board</a></li>
            </ul>
            <div class="search">
                <input type="text" placeholder="search">
                <button><img src="./img/search.png" alt="검색버튼이미지"></button>
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
    </header>
	<div class="container">
		<div class="signContent">
            <h2>로그인</h2>
			<div class="jumbotron">
				<form method="post" action="loginAction.jsp">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primory form-control lastBtn" value="로그인">
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>