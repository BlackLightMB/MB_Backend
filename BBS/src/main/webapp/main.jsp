<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Movie Blending 웹사이트</title>
<link rel="stylesheet" href="css/login.css" />
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css?after" /> --%>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script>
	
</script>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	
	<!-- Header-->
	<header class="header">
		<div class="header1">
			<div class="header__logo">
				<img class="header__logo__img" src="images/favicon.ico" alt="logo" />
				<h1 class="header__logo__title">
					<a href="#">Movie Blending</a>
				</h1>
			</div>

			<!-- 상단 우측 nav바 -->
			<%
				if (userID == null) {
			%>
			<nav>
				<ul class="header__menu">
					<!-- 로그인 안 되어있을 때 -->
					<li><a class="header__menu__item" href="login.jsp">로그인</a></li>
					<li><a class="header__menu__item" href="join.jsp">회원가입</a></li>
				</ul>
			</nav>
			<%
				} else {
			%>
			<nav>
				<ul class="header__menu">
					<!-- 로그인 되어있을 때 -->
					<li><a class="header__menu__item" href="mypage.jsp">마이페이지</a></li>
					<li><a class="header__menu__item" href="logoutAction.jsp">로그아웃</a></li>
				</ul>
			</nav>
			<%
			}
			%>
		</div>
		
		<!-- 하단 header -->
		<div class="header2">
			<nav>
				<ul class="header__menu">
					<li><a class="header__menu__item active" href="main.jsp">박스오피스</a></li>
					<li><a class="header__menu__item" href="view.jsp">영화조회</a></li>
					<li><a class="header__menu__item" href="board.jsp">영화Talk</a></li>
				</ul>
			</nav>
			<div class="header__search">
				<input name="search" type="text" placeholder="찾고 있는 영화가 있나요?"
					size="60" />
				<div class="header__search__button">검색</div>
			</div>
		</div>
	</header>

	<h1 style="text-align:center">박스오피스 포스터 모음/메인 화면</h1>


	<!-- Footer -->
	<footer id="contact" class="section">
		<div class="max-container">
			<h2 class="title">세미 프로젝트 3팀</h2>
			<!-- <p class="description">세미 프로젝트 3팀</p> -->
			<ul class="contact__links">
				<li><a class="contact__link"
					href="https://www.instagram.com/netflixkr/" title="netflixkr link"
					target="_blank"> <i class="fa-brands fa-instagram"></i>
				</a></li>
				<li><a class="contact__link"
					href="https://www.instagram.com/disneypluskr/"
					title="disneypluskr link" target="_blank"> <i
						class="fa-brands fa-instagram"></i>
				</a></li>
			</ul>
			<p>©BlackLight - All rights reserved</p>
		</div>
	</footer>

</body>
</html>