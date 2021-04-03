<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
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
	<%
		String userID = null;
		if (session.getAttribute("userID") != null); {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
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
		<div class="signContent">
			<h2>게시판</h2>
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%= list.get(i).getBbsID() %></td>
						<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1) {
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-left">이전</a>
			<% 
				} if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-left">다음</a>
			<% 
				}
			%>
			<a class="boardBtn" href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>