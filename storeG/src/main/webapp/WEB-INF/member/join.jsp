<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../parts/header.jsp"%>

<div class="join_container">
	<form action="memberJoin.do" method="post">
		<table style="border: 1px solid black">
			<tr>
				<th><label for="id">아이디:</label></th>
				<td><input type="text" id="id" name="id" required></td>
			</tr>
			<tr>
				<td><label for="password">비밀번호:</label></td>
				<td><input type="password" id="password" name="password"
					required></td>
			</tr>
			<tr>
				<td><label for="confirm_password">비밀번호 확인:</label></td>
				<td><input type="password" id="confirm_password"
					name="confirm_password" required></td>
			</tr>
			<tr>
				<td><label for="name">이름:</label></td>
				<td><input type="text" id="name" name="name" required></td>
			</tr>
			<tr>
				<td><label for="address">주소:</label></td>
				<td><input type="text" id="address" name="address" required></td>
			</tr>
			<tr>
				<td><label for="phone">폰번호:</label></td>
				<td><input type="text" id="phone" name="phone" required></td>
			</tr>
			<tr>
				<td><label for="email">이메일:</label></td>
				<td><input type="email" id="email" name="email" required></td>
			</tr>
		</table>
		<input type="submit" value="가입">
	</form>
	<div class="join_outh">
		<div class="login_api">
			<a
				href="https://kauth.kakao.com/oauth/authorize?client_id=d860d38c992ca8bf5f07dcc3fd5122b9&redirect_uri=http://localhost:9090/member/auth/kakao/callback&response_type=code"><img
				src="${ ctx }/img/kakao_small.png"></a>
		</div>

		<div class="login_api">
			<a href="##########"><img src="${ ctx }/img/google_small.png"></a>
		</div>

		<div class="login_api">
			<a href="############"><img src="${ ctx }/img/naver_small.png"></a>
		</div>
	</div>
</div>

<%@ include file="../parts/footer.jsp"%>
