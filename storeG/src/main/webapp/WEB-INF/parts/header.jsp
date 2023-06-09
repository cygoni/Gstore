<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>storeG</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css">
<script src="https://kit.fontawesome.com/116a85af51.js"
	crossorigin="anonymous"></script>
</head>

<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<session>
<body>
	<header>
		<div class="search_main">

			<div class="search_div">
				<input class="keyword" type='text' name='search' maxlength=255
					value="" autocomplete="off" placeholder="검색어를 입력해주세요.">
				<button class="search_button" type="submit" name="click" value="검색">
					<span class="search_span"><span class="blind">검색</span></span>
				</button>
			</div>
		</div>
		<div id="logo">
			<a href="main.do"><img src="img/logo.png"></a>
		</div>
		<c:if test="${ empty id }">
			<button class="login" data-toggle="modal" data-target="#exampleModal">로그인</button>
			<button class="join" onclick="location.href = 'joinPage.do'">회원가입</button>
		</c:if>

		<c:if test="${ not empty id }">
			<div class="myinfo_top_content">
				<div class="myinfo-top-content_container">
					<div class="myinfo">
						<c:if test="${sessionScope.id == 'admin'}">
							<button class="myinfo_button"
								onclick="location.href='itemsInsertPage.do'">
								<i class="fa-solid fa-person"></i>
							</button>
						</c:if>
						<c:if test="${sessionScope.id != 'admin'}">
							<button class="myinfo_button" onclick="location.href='myinfo.do'">
								<i class="fa-solid fa-person"></i>
							</button>
						</c:if>
					</div>

					<div class="basket">
						<button class="basket_button"
						onclick="location.href='cartList.do'">
							<i class="fa-solid fa-tag"></i>
						</button>
					</div>
					<div class="order_detail">
						<button class="order_detail_button"
							onclick="location.href='myOrder.do'">
							<i class="fa-solid fa-list"></i>
						</button>
					</div>

					<div class="user">
						<div class="user_id">
							<div style="color: white">${ id }님</div>
						</div>
					</div>
					<button class="logout" onclick="location.href='memberLogout.do'">로그아웃</button>
				</div>
			</div>
		</c:if>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">로그인 페이지</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="member_login">
							<form action="memberLogin.do" method="POST">
								<div class="member_login_input">
									<input type="text" name="id" placeholder="아이디"
										style="margin-bottom: 10px">
								</div>

								<div class="member_login_input">
									<input type="password" name="pw" placeholder="비밀번호"
										style="margin-bottom: 10px">
								</div>

								<div class="member_login_btn">

									<input type="submit" class="btn btn-secondary" id="btn-login"
										value="로그인">


								</div>

								<div class="find_password">
									<a href="/forgot-password">아이디 또는 비밀번호를 잊으셨나요?</a>
								</div>

							</form>
						</div>
					</div>
					<div class="modal-footer" style="justify-content: center">

						<div class="login_api">
							<a
								href="https://kauth.kakao.com/oauth/authorize?client_id=d860d38c992ca8bf5f07dcc3fd5122b9&redirect_uri=http://localhost:9090/member/auth/kakao/callback&response_type=code"><img
								src="${ ctx }/img/kakao_small.png"></a>
						</div>

						<div class="login_api">
							<a href="##########"><img src="${ ctx }/img/google_small.png"></a>
						</div>

						<div class="login_api">
							<a href="############"><img
								src="${ ctx }/img/naver_small.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>