<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>내정보 페이지</title>
<%@ include file="../parts/header.jsp"%>
<div class="myinfo_container">
	<div class="session">
		<div class="myinfo_content">

			<div class="content_top"><h3>내정보</h3><button onclick= "location.href='myinfomodify.do'">내정보변경</button></div>
			
			<div class="content_mid">
				<div class="mid_name">
					<div class="info_name" >이름</div>
					<div class="user_name">${vo.name}</div>
					<div class="content_mid_end"></div>
				</div>
				<div class="mid_address">
					<div class="info_address">주소</div>
					<div class="user_address">${vo.address}</div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_phone_no">
					<div class="info_phone_no">핸드폰 번호</div>
					<div class="user_phone_no">${vo.phone}</div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_email">
					<div class="info_email">이메일</div>
					<div class="user_email">${vo.email}</div>
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
<%@ include file="../parts/footer.jsp"%>