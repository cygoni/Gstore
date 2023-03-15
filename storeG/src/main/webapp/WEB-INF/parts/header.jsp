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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>


<header>
	<div class="search">
		<div class="search_div">
			<input class="keyword" type='text' name='search' maxlength=255
				value="" autocomplete="off" placeholder="검색어를 입력해주세요.">
			<button class="search_button" type="submit" name="click" value="검색">
				<span class="search_span"><span class="blind">검색</span></span>
			</button>
		</div>
	</div>
	<div id="logo">
		<a href="main.do"><img  src="img/logo.jpg"></a>
	</div>
	<button class="login"
		onclick="location.href = 'main.do?center=member/login'">로그인</button>
	<button class="join"
		onclick="location.href = 'main.do?center=member/join'">회원가입</button>


</header>
<session>