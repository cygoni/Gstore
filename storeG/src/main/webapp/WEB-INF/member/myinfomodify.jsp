<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <title>내정보 수정 페이지</title>
<%@ include file="../parts/header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="script/myinfomodify.js" defer></script>
<script type="text/javascript" src="script/modify.js" defer></script>

<form action="modify.do" method="post">
<div class="myinfo_container">
	<div class="session">
		<div class="myinfo_content">

			<div class="content_top"><h3>내정보수정</h3><input class="btn btn-outline-dark" type="button" onclick="validCheck(form)" value="내정보변경완료"></div>
			
			<div class="content_mid">
				<div class="mid_name">
					<div class="info_name" >이름</div>
					<div class="user_name">${vo.name}</div>
					<div class="content_mid_end"></div>
				</div>
				<div class="mid_address">
					<div class="info_address">주소</div>
					<div class="user_address"><input type="text" id="address" name="address" value="${vo.address}" readonly >
				    
					</div>
  				  
					<div class="content_mid_end"><button type="button" class="modify_address_button" id="member_post" readonly onclick="findAddr()">주소 찾기</button></div>

				</div>
				<div class="mid_phone_no">
					<div class="info_phone_no">핸드폰 번호</div>
					<div class="user_phone_no"><input type="tel" id="phone" name="phone" value="${vo.phone}" id="msg" data-val="${ctx}"></div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_email">
					<div class="info_email">이메일</div>
					<div class="user_email"><input type="email" id="email" name="email" value="${vo.email}"></div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_mileage">
					<div class="info_mileage">마일리지</div>
					<div class="user_mileage">${vo.mileage}</div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_coupon">
					<div class="info_coupon">쿠폰</div>
					<div class="user_coupon">${vo.coupons}</div>
					<div class="content_mid_end"></div>


				</div>
				<div class="mid_money">
					<div class="info_money">보유금액</div>
					<div class="user_money">${vo.money}</div>
					<div class="content_mid_end"></div>

				</div>
				
			</div>
			
			<div class="content_bottom"></div>

		</div>
	</div>
</div>
</form>
<%@ include file="../parts/footer.jsp"%>