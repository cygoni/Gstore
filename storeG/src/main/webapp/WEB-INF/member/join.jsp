<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../parts/header.jsp"%>
<script type="text/javascript" src="script/join.js" defer></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/member.css">
<div class="join_container">
	<form action="memberJoin.do" method="post">
		<table class="join_content" style="border: 1px solid black">
		 	 <tr class="msg" ><td><span  id="msg" data-val="${ctx}"></span></td></tr>
			<tr>
				<th><label  for="id">아이디:</label></th>
				<td><input type="text" id="id" name="id" autofocus required>
				 <input type="button" value="중복체크" onclick="idcheck()" class="btn btn-outline-dark">	
				
					</td>
				
				
			</tr>
			<tr>
				<th><label for="password">비밀번호:</label></th>
				<td><input type="password" id="pw" name="pw" required></td>
			</tr>
			<tr>
				<th><label for="confirm_password">비밀번호 확인:</label></th>
				<td><input type="password" id="confirm_password"
					name="confirm_password" required></td>
			</tr>
			<tr>
				<th><label for="name">이름:</label></th>
				<td><input type="text" id="name" name="name" required></td>
			</tr>
			<tr>
				<th><label for="address">주소:</label></th>
				<td><input type="text" id="address" name="address" required></td>
			</tr>
			<tr>
				<th><label for="phone">폰번호:</label></th>
				<td><input type="text" id="phone" name="phone" required></td>
			</tr>
			<tr>
				<th><label for="email">이메일:</label></th>
				<td><input type="email" id="email" name="email" required></td>
			</tr>
		</table>
		<input type="button" value="가입" class="col-1 btn btn-success"  onclick="validCheck(form)">
		<input type="reset" value="취소" class="col-1 btn btn-success" />
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
