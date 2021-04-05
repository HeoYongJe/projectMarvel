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
    <link rel="stylesheet" href="./css/slide.css">
    <link rel="stylesheet" href="./css/background.css">
    <link rel="stylesheet" href="./css/respons.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
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
                        <button type="button" onclick="filterItem('all'); imageChange('all')">All</button>
                    </li>
                    <li>
                        <button type="button" onclick="filterItem('iron'); imageChange('iron')">아이언맨</button>
                    </li>
                    <li>
                        <button type="button" onclick="filterItem('avengers'); imageChange('avengers')">어벤져스</button>
                    </li>
                    <li>
                        <button type="button" onclick="filterItem('spider'); imageChange('spider')">스파이더맨</button>
                    </li>
                </ul>
            </div>
        </section>
        <section id="item-list-container">
            <!-- 아이디명 변경-->
            <ul>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman1.png" alt="">
                    <span class="movie-list-item-title">아이언맨1</span>
                    <p class="movie-list-item-desc">Iron man, 2008</p>
                    <button class="movie-list-item-button button1">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman2.png" alt="">
                    <span class="movie-list-item-title">아이언맨2</span>
                    <p class="movie-list-item-desc">Iron man2, 2010</p>
                    <button class="movie-list-item-button button2">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman3.png" alt="">
                    <span class="movie-list-item-title">아이언맨3</span>
                    <p class="movie-list-item-desc">Iron man2, 2013</p>
                    <button class="movie-list-item-button button3">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/avengers1.png" alt="">
                    <span class="movie-list-item-title">어벤져스1</span>
                    <p class="movie-list-item-desc">Avengers, 2011</p>
                    <button class="movie-list-item-button button4">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/avengers2.png" alt="">
                    <span class="movie-list-item-title">어벤져스:에이지 오브 울트론</span>
                    <p class="movie-list-item-desc">The Avengers: Age of Ultron, 2015</p>
                    <button class="movie-list-item-button button5">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/avengers3.png" alt="">
                    <span class="movie-list-item-title">어벤져스:인피니티 워</span>
                    <p class="movie-list-item-desc">Avengers:Infinity War, 2018</p>
                    <button class="movie-list-item-button button6">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/avengers4.png" alt="">
                    <span class="movie-list-item-title">어벤져스:엔드게임</span>
                    <p class="movie-list-item-desc">Avengers:Endgame, 2019</p>
                    <button class="movie-list-item-button button7">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman.jpg" alt="">
                    <span class="movie-list-item-title">아이언맨</span>
                    <p class="movie-list-item-desc">Iron Man, 2008</p>
                    <button class="movie-list-item-button button8">More</button>
                </li>
                <li class="movie-list-item">
                    <img class="movie-list-item-img" src="img/ironman.jpg" alt="">
                    <span class="movie-list-item-title">아이언맨</span>
                    <p class="movie-list-item-desc">Iron Man, 2008</p>
                    <button class="movie-list-item-button button9">More</button>
                </li>
            </ul>

            <!-- 모달 -->
            <div class="modal-bg modal1">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/mAA3XMBFoEw" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Iron man1</h2>
                    <p class="modal-contents">천재적인 두뇌와 재능으로 세계 최고의 군수 산업체 스타크 인더스트리를 이끄는 CEO이자, 타고난 매력으로 셀러브리티 못지 않은 화려한
                        삶을 살아가던 억만장자 토니 스타크는 아프가니스탄에서 자신이 개발한 신무기 발표를 성공리에 마치고 돌아가던 중에 테러리스트의 갑작스런 습격에 의해, 가슴에 치명적인 부상을
                        입고 그들에게 납치당한다. 테러리스트들은 아프가니스탄에서 발표한 신무기를 만들라고 협박하나,</p>
                    <p class="modal-contents">토니는 탈출을 위한 철갑슈트를 만드는데 성공하고, 그의 첫 슈트인 ‘Mk.1’을 입고 탈출한다. 미국으로 돌아온 토니 스타크는 자신이
                        만든 무기가 많은 사람의 생명을 위협하고...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close1"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal2">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/FNQowwwwYa0" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Iron man2</h2>

                    <p class="modal-contents">토니는 모나코에서 열린 기업인들의 행사에 참석했다가 옆에서
                        열리던 레이싱 대회에 자신의 회사에서 운영하는 팀의 기존 레이서를 밀어내고 레이서로 참가하는데,[5] 난입한 이반 반코가 아이언맨 슈트와 비슷한 원리의 아크 리액터 기술을
                        이용한 위플래시 슈트를 장착하고 등장해 깽판을 치면서 토니의 위상은 치명적인 타격을 입는다.
                    </p>
                    <p class="modal-contents">토니는 휴대용으로 개발된 Mk.5를 입고 그의 아크 리엑터를 뽑아 박살내며 그를 제압했지만, 자신의 기술은 아무도 흉내낼 수 없다고
                        정부에 큰 소리 빵빵쳤던 토니를 제대로 엿 먹이는데에는 성공한다. 그리고 그 현장을 TV 생중계로 목격한 저스틴 해머는 감옥 신세를 지던 이반 반코를 빼돌려 그를 이용해
                        스타크 인더스트리를 누르고 압도해낼 개발을하여 토니를 무너뜨릴 계획을 세우는데...
                    </p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close2"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal3">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/UqBfpeO8Tqo" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Iron man3</h2>
                    <p class="modal-contents">아이언맨 슈트들이 폭발하는 장면과 함께 1999년 12월 31일 토니 스타크의 회상으로 영화가 시작된다. 토니 스타크는 해피 호건과
                        함께 스위스 베른의 신년 과학 포럼에 참석했는데, 여기서 호 인센과 우 박사 등 유명한 과학자들을 만난 후 마야 한센과 함께 모임을 빠져 나온다. 그러던 중 추한 절름발이
                        과학자 킬리언을 만나는데, 킬리언은 토니와 한센에게 자신의 명함을 주면서 자신이 소속된 민간 싱크탱크 A.I.M.(Advanced Idea Mechanics)으로 와 달라고
                        얘기한다. 토니는 킬리언에게 나중에 옥상에서 만나자며 거짓말을 하고,</p>
                    <p class="modal-contents">킬리언은 그 말을 믿고 아무도 없는 옥상으로 올라가서 한없이 기다리며 새해를 맞이한다. 한편 스타크와 한센은 밤늦게까지 한센이 만든
                        기술에 관해서 토론하는데, 도중에 익스트리미스를 주입받은 식물이 폭발한다. 이후 한센과 밤을 보낸 토니는 명함만 남겨두고 떠나는데...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close3"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal4">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/eOrNdBpGMv8" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Avengers1</h2>
                    <p class="modal-contents">쉴드가 세운 암흑 에너지 연구소에서는 테서랙트의 연구가 진행되는 중이었는데, 갑자기 테서랙트가 발동하며 로키가 등장한다. 로키는 쉴드
                        요원들을 전멸시키고 호크아이, 셀빅을 포함한 일부 요원들을 세뇌하여 자기 부하로 만든 후 테서랙트를 가지고 떠난다. 연구소가 테서랙트의 폭주로 폭발하는 가운데 닉 퓨리와
                        마리아 힐은 간신히 탈출하고, 퓨리는 슈퍼 히어로들을 소집하는 '어벤져스 프로젝트'를 실행하기로 결정하는데...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close4"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal5">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/5CvD85mdchU" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">The Avengers: Age of Ultron</h2>
                    <p class="modal-contents">소코비아의 숲 속 어딘가에서 어벤져스와 하이드라 잔당의 교전이 시작된다. 어벤져스의 임무는 이곳에 있는 하이드라의 비밀 기지에 숨겨진
                        로키의 치타우리 셉터를 되찾는 것. 전투가 벌어지던 도중에 스트러커 남작은 대원들의 사기를 북돋우며 하이드라에게 항복은 없다고 연설한다.</p>
                    <p class="modal-contents">데이터를 모조리 삭제할 것을 명령하고 혼자서 도주를 시도한다. 기지를 둘러싸고 있던 에너지 방어막이 아이언맨에 의해 무력화되자 기지
                        내부는 순식간에 혼돈에 휩싸인다. 이 와중에 스트러커 남작이 숨기고 있던 강화 인간 쌍둥이 막시모프 남매가 기지에서 탈출하는데...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close5"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal6">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/9TfV7Vw4vXU" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Avengers:Infinity War</h2>
                    <p class="modal-contents">타노스의 양자식들이자 부하인 블랙 오더의 에보니 모가 쓰러진 아스가르드인들 사이에서 "너희는 죽음으로 타노스의 자녀가 됐다" 라고
                        말하며 걷는다. 헤임달도 부상을 입고 토르도 크게 당한 듯 타노스의 발 밑에 쓰러진 상태. 이미 인피니티 건틀릿에 파워 스톤을 장착한 타노스는 쓰러져 있는 토르의 머리를
                        손아귀에 쥐고서 로키에게 형이 죽는 걸 보고 싶지 않으면 스페이스 스톤을 내놓으라고 하지만, 로키는 태연한 척 외면한다. </p>
                    <p class="modal-contents">그러나 타노스가 토르에게 파워 스톤을 이용한 고문을 가하자, 로키는 보다 못해 그만두라고 외치며 테서랙트를 꺼내든다. 토르는 정말로
                        자신들에게 없고 아스가르드에서 파괴됐다고 생각했는데, 로키가 몰래 가져온걸 꺼내들자 "넌 최악의 동생" 이라고 한다. 이에 로키는 의미심장한 말을 하는데...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close6"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal7">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/mG3sMrejQRk" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Avengers:Endgame</h2>
                    <p class="modal-contents">'호크아이' 클린트는 캡틴 아메리카: 시빌 워에서 소코비아 협정을 위반한 죄로 가택 연금 중이지만 딸에게 활을 쏘는 법을 가르쳐 주며
                        가족들과 단란한 시간을 보내고 있다. 그런데 점심을 먹으려고 화살을 챙기고 뒤를 돌아본 순간 가족들은 온데간데 없어졌고 그들이 있던 자리에는 먼지만 휘날리고 있다. 타노스가
                        손가락을 튕긴 순간이었다. 애타게 가족들을 찾는 클린트...</p>

                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close7"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal8">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/9TfV7Vw4vXU" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Avengers:Infinity War</h2>
                    <p class="modal-contents">타노스의 양자식들이자 부하인 블랙 오더의 에보니 모가 쓰러진 아스가르드인들 사이에서 "너희는 죽음으로 타노스의 자녀가 됐다" 라고
                        말하며 걷는다. 헤임달도 부상을 입고 토르도 크게 당한 듯 타노스의 발 밑에 쓰러진 상태. 이미 인피니티 건틀릿에 파워 스톤을 장착한 타노스는 쓰러져 있는 토르의 머리를
                        손아귀에 쥐고서 로키에게 형이 죽는 걸 보고 싶지 않으면 스페이스 스톤을 내놓으라고 하지만, 로키는 태연한 척 외면한다. </p>
                    <p class="modal-contents">그러나 타노스가 토르에게 파워 스톤을 이용한 고문을 가하자, 로키는 보다 못해 그만두라고 외치며 테서랙트를 꺼내든다. 토르는 정말로
                        자신들에게 없고 아스가르드에서 파괴됐다고 생각했는데, 로키가 몰래 가져온걸 꺼내들자 "넌 최악의 동생" 이라고 한다. 이에 로키는 의미심장한 말을 하는데...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close8"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>

            <div class="modal-bg modal9">
                <div class="modalPop">
                    <iframe src="https://www.youtube.com/embed/9TfV7Vw4vXU" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <h2 class="modal-title">Avengers:Infinity War</h2>
                    <p class="modal-contents">타노스의 양자식들이자 부하인 블랙 오더의 에보니 모가 쓰러진 아스가르드인들 사이에서 "너희는 죽음으로 타노스의 자녀가 됐다" 라고
                        말하며 걷는다. 헤임달도 부상을 입고 토르도 크게 당한 듯 타노스의 발 밑에 쓰러진 상태. 이미 인피니티 건틀릿에 파워 스톤을 장착한 타노스는 쓰러져 있는 토르의 머리를
                        손아귀에 쥐고서 로키에게 형이 죽는 걸 보고 싶지 않으면 스페이스 스톤을 내놓으라고 하지만, 로키는 태연한 척 외면한다. </p>
                    <p class="modal-contents">그러나 타노스가 토르에게 파워 스톤을 이용한 고문을 가하자, 로키는 보다 못해 그만두라고 외치며 테서랙트를 꺼내든다. 토르는 정말로
                        자신들에게 없고 아스가르드에서 파괴됐다고 생각했는데, 로키가 몰래 가져온걸 꺼내들자 "넌 최악의 동생" 이라고 한다. 이에 로키는 의미심장한 말을 하는데...</p>
                    <div class="modal-comments clearfix">
                        <input type="text" placeholder="comment">
                        <button>댓글쓰기</button>
                    </div>
                    <span class="modal-close close9"><i class="fas fa-times-circle"></i></span>
                </div>
            </div>
        </section>
        <section class="middleImg">
            <div>
                <h2>MARVEL</h2>
            </div>
        </section>

        <!-- 배경 이미지 바꾸기 -->
        <!-- <section class="bgChange">
            <ul>
                <li>
                    <img src="img/marvel.jpg" title="image 1" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/hulk.jpg" title="image 2" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/ironman.jpg" title="image 3" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/spiderman.jpg" title="image 4" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/spiderman.jpg" title="image 5" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/slide01.jpg" title="image 6" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/slide02.jpg" title="image 7" onclick="imageChange(this)">
                </li>
                <li>
                    <img src="img/slide03.jpg" title="image 8" onclick="imageChange(this)">
                </li>
            </ul>
        </section> -->

        <!-- 슬라이드 -->
        <!-- <section>
            <ul class="slide-auto">
                <li><img src="img/ironman1.png"></li>
                <li><img src="img/ironman1.png"></li>
                <li><img src="img/ironman1.png"></li>
            </ul>
        </section> -->

        <section>
            <ul class="slide-auto">
                <li class="item">
                    <img src="img/hulk.jpg" alt="#" class="character">
                    <div class="details">
                        <p class="">[이벤트]</p>
                        <p class="">현재 진행중</p>
                    </div>
                </li>
                <li class="item">
                    <img src="img/hulk.jpg" alt="#" class="character">
                    <div class="details">
                        <p class="">[이벤트]</p>
                        <p class="">현재 진행중</p>
                    </div>
                </li>
                <li class="item">
                    <img src="img/hulk.jpg" alt="#" class="character">
                    <div class="details">
                        <p class="">[이벤트]</p>
                        <p class="">현재 진행중</p>
                    </div>
                </li>
                <li class="item">
                    <img src="img/hulk.jpg" alt="#" class="character">
                    <div class="details">
                        <p class="">[이벤트]</p>
                        <p class="">현재 진행중</p>
                    </div>
                </li>
                <li class="item">
                    <img src="img/hulk.jpg" alt="#" class="character">
                    <div class="details">
                        <p class="">[이벤트]</p>
                        <p class="">현재 진행중</p>
                    </div>
                </li>
                <li class="item">
                    <img src="img/hulk.jpg" alt="#" class="character">
                    <div class="details">
                        <p class="">[이벤트]</p>
                        <p class="">현재 진행중</p>
                    </div>
                </li>
            </ul>
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
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/app.js"></script>
</body>

</html>