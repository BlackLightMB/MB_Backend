<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<!-- 헤더-->
	<header class="header">
		<div class="header1">
			<div class="header__logo">
				<img class="header__logo__img" src="images/favicon.ico" alt="logo" />
				<h1 class="header__logo__title">
					<a href="#">Movie Blending</a>
				</h1>
			</div>
			
			<!-- 상단 우측 nav바 -->
			<nav>
				<ul class="header__menu">

					<li><a class="header__menu__item" href="login.jsp">로그인</a></li>
					<li><a class="header__menu__item" href="login.jsp">회원가입</a></li>
				</ul>
			</nav>
		</div>

		<!-- 하단 header -->
		<div class="header2">
			<nav>
				<ul class="header__menu">
					<li><a class="header__menu__item active" href="main.jsp">박스오피스
					</a></li>
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

	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in">
			<label for="tab-1" class="tab" style="cursor: pointer">로그인</label> <input
				id="tab-2" type="radio" name="tab" class="sign-up" checked> <label
				for="tab-2" class="tab" style="cursor: pointer">회원가입</label>

			<!-- 로그인 -->
			<div class="login-form">
					<div class="sign-in-htm">
					<form method="post" action="loginAction.jsp">					
						<div class="group">
							<label for="user" class="label">ID</label> 
							<input id="user" type="text" class="input" name="userID">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> 
							<input id="pass" type="password" class="input" data-type="password"
							name="userPassword">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> 아이디 저장하기</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign In"
								style="cursor: pointer">
						</div>
					</form>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">Forgot Password?</a>
						</div>
			</div>

			<!-- 회원가입 -->
			<div class="sign-up-htm">
				<form method="post" action="joinAction.jsp">	
				<div class="group">
					<label for="id" class="label">UserID</label> 
					<input id="id" type="text" class="input" name="userID">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label> 
					<input id="pass" type="password" class="input" data-type="password" name="userPassword">
				</div>
				<div class="group">
					<label for="username" class="label">Username</label> 
					<input id="username" type="text" class="input" name="userName">
				</div>
				<div class="group">
					<label for="nickname" class="label">Nickname</label>
					<input id="nickname" type="text" class="input" name="userNickname">
				</div>
				<div class="group">
					<label for="email" class="label">Email Address</label> 
					<input id="email" type="email" class="input" name="userEmail">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up"
						style="cursor: pointer">
				</div>
				</form>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1" style="cursor: pointer">Already Member?</label>
				</div>

			</div>
		</div>
	</div>
	</div>


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