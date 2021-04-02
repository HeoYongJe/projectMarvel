<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/modal.css">
    <link rel="stylesheet" href="./css/respons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <title>MARVEL Project</title>
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
    <main>
        <section>
            <div id="mainVisual">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="./img/slide01.jpg" alt="...">
                        </div>
                        <div class="item">
                            <img src="./img/slide02.jpg" alt="...">
                        </div>
                        <div class="item">
                            <img src="./img/slide03.jpg" alt="...">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </section>
        <section id="itemMenu">
            <div class="menuList">
                <ul>
                    <li>
                        <button type="button" onclick="filterItem('all')">All</button>
                    </li>
                    <li>
                        <button type="button" onclick="filterItem('hulk')">헐크</button>
                    </li>
                    <li>
                        <button type="button" onclick="filterItem('spider')">스파이더맨</button>
                    </li>
                    <li>
                        <button type="button" onclick="filterItem('iron')">아이언맨</button>
                    </li>
                </ul>
            </div>
        </section>
        <section id="item-list-container">
            <!-- 아이디명 변경-->
            <ul>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/hulk.jpg" alt="">
                    <span class="movie-list-item-title">인크레더블 헐크</span>
                    <p class="movie-list-item-desc">The Incredible Hulk, 2008</p>
                    <button class="movie-list-item-button button1">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/hulk.jpg" alt="">
                    <span class="movie-list-item-title">인크레더블 헐크</span>
                    <p class="movie-list-item-desc">The Incredible Hulk, 2008</p>
                    <button class="movie-list-item-button button1">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/spiderman.jpg" alt="">
                    <span class="movie-list-item-title">스파이더맨</span>
                    <p class="movie-list-item-desc">Spider Man, 2008</p>
                    <button class="movie-list-item-button button2">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman.jpg" alt="">
                    <span class="movie-list-item-title">아이언맨</span>
                    <p class="movie-list-item-desc">Iron Man, 2008</p>
                    <button class="movie-list-item-button button3">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/hulk.jpg" alt="">
                    <span class="movie-list-item-title">인크레더블 헐크</span>
                    <p class="movie-list-item-desc">The Incredible Hulk, 2008</p>
                    <button class="movie-list-item-button button1">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/spiderman.jpg" alt="">
                    <span class="movie-list-item-title">스파이더맨</span>
                    <p class="movie-list-item-desc">Spider Man, 2008</p>
                    <button class="movie-list-item-button button2">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman.jpg" alt="">
                    <span class="movie-list-item-title">아이언맨</span>
                    <p class="movie-list-item-desc">Iron Man, 2008</p>
                    <button class="movie-list-item-button button3">More</button>
                </li>
            </ul>

            <!-- 모달 -->
            <div class="modal-bg modal1">
                <div class="modalPop">
                    <iframe class="modal-clip clip1" width="90%" height="50%"
                        src="https://www.youtube.com/embed/OqhJvEDNrJc" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">인크레더블 헐크</h2>
                    <p class="modal-contents">실험 중 감마선에 노출된 이후 분노를 통제할 수 없는 상태가 되면 녹색 괴물 ‘헐크’로 변하게 되는 브루스 배너(에드워드 노튼).
                        필사적으로 치료제 개발에 매달리지만, 그의 능력을 이용하려는 정부 군대의 끈질긴 추격을 받고 쫓기게 된다. 한편 헐크의 거대한 힘의 비밀을 파헤치던 이들은 헐크보다 더
                        파괴적인 ‘어보미네이션’을 만드는데 성공, 도시 전체를 집어삼키려 한다. 이에 브루스 배너는 정상적인 인생을 되찾으려던 계획을 버리고, 어보미네이션과 정부 군대, 그리고
                        자기 자신과의 마지막 대결을 준비하는데...
                    </p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close1"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal2">
                <div class="modalPop">
                    <iframe class="modal-clip clip2" width="90%" height="50%"
                        src="https://www.youtube.com/embed/OqhJvEDNrJc" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">스파이더맨1</h2>

                    <p class="modal-contents">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Natus, ipsum
                        autem. Nobis voluptate quis deleniti a numquam minus soluta aperiam natus porro accusantium!
                        Maiores eum et ipsa adipisci itaque porro!</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close2"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal3">
                <div class="modalPop">
                    <iframe class="modal-clip clip3" width="90%" height="50%"
                        src="https://www.youtube.com/embed/OqhJvEDNrJc" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">아이언맨1</h2>
                    <p class="modal-contents">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro, fugit
                        temporibus, mollitia id perferendis velit dolore ipsum ducimus illum voluptas adipisci eos
                        sapiente obcaecati nemo sint fuga excepturi, amet quaerat.</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close3"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer">
        <div class="footerArea">
            <dl>
                <dt>Heo Yong Je</dt>
                <dd>
                    <a href="https://github.com/HeoYongJe">https://github.com/HeoYongJe</a>
                </dd>
            </dl>
            <dl>
                <dt>Kim Dong Hwi</dt>
                <dd>
                    <a href="https://github.com/donghwi-kor">https://github.com/donghwi-kor</a>
                </dd>
            </dl>
            <dl>
                <dt>Kim Gi Tak</dt>
                <dd>
                    <a href="https://github.com/tuduly30">https://github.com/tuduly30</a>
                </dd>
            </dl>
        </div>

    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/app.js"></script>
</body>

</html>