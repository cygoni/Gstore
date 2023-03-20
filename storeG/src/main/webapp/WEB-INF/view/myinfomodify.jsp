<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <title>내정보 수정 페이지</title>
<%@ include file="../parts/header.jsp"%>
<div class="myinfo_container">
	<div class="session">
		<div class="myinfo_content">

			<div class="content_top"><h3>내정보</h3><button onclick= "location.href='myinfo.do'">내정보변경완료</button></div>
			
			<div class="content_mid">
				<div class="mid_name">
					<div class="info_name" >이름</div>
					<div class="user_name">박병준</div>
					<div class="content_mid_end"></div>
				</div>
				<div class="mid_address">
					<div class="info_address">주소</div>
					<div class="user_address"><input name="address"></div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_phone_no">
					<div class="info_phone_no">핸드폰 번호</div>
					<div class="user_phone_no"><input name="phone_no"></div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_email">
					<div class="info_email">이메일</div>
					<div class="user_email"><input name="email"></div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_mileage">
					<div class="info_mileage">마일리지</div>
					<div class="user_mileage">1000</div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_coupon">
					<div class="info_coupon">쿠폰</div>
					<div class="user_coupon">1개</div>
					<div class="content_mid_end"></div>


				</div>
				<div class="mid_money">
					<div class="info_money">보유금액</div>
					<div class="user_money">10000</div>
					<div class="content_mid_end"></div>

				</div>
				
			</div>
			
			<div class="content_bottom"></div>

		</div>
	</div>
</div>
<%@ include file="../parts/footer.jsp"%>