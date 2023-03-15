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
</head>
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
<body>

	<header>

		<a> G STORE</a>
		<div>

			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal">로그인</button>
			<button>회원가입</button>
		</div>
		<table>

			<tr>
				<td><img src="img/header.png"></td>
			</tr>
		</table>
	</header>


	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="member_login">
						<form th:action="@{/auth/loginProc}" th:method="POST">
							<div class="member_login_input">
								<input type="text" name="username" placeholder="아이디">
							</div>

							<div class="member_login_input">
								<input type="password" name="password" placeholder="비밀번호">
							</div>

							<div class="member_login_btn">

								<input type="submit" class="btn btn-secondary" id="btn-login"
									value="로그인"> <input type="button"
									class="btn btn-secondary" value="회원가입"
									onclick="location.href='/member/join'">

							</div>

							<div class="find_password">
								<a href="/forgot-password">아이디 또는 비밀번호를 잊으셨나요?</a>
							</div>

						</form>
					</div>
				</div>
				<div class="modal-footer">
					<div class="login_api">
						<a
							href="https://kauth.kakao.com/oauth/authorize?client_id=d860d38c992ca8bf5f07dcc3fd5122b9&redirect_uri=http://localhost:9090/member/auth/kakao/callback&response_type=code"><img
							src="${ ctx }/img/kakao_small.png"></a>
					</div>

					<div class="login_api">
						<a href="##########"><img
							src="${ ctx }/img/google_small.png"></a>
					</div>

					<div class="login_api">
						<a href="############"><img
							src="${ ctx }/img/naver_small.png"></a>
					</div>
				</div>
			</div>
		</div>
	</div>