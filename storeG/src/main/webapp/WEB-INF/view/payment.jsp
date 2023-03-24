<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="script/payment.js" defer></script>
<meta charset="UTF-8">
<title>결제 페이지</title>
<%@ include file="../parts/header.jsp"%>
<div class="payment">
	<div class="payment_content">
		<p>주문 결제</p>
	</div>
</div>
<div class="wrapper">
	<div class="session_left">
		<div class="shipping_info">
			<div class="info">
				<p>배송 정보</p>
			</div>
			<hr width="450" style="border: 1px solid black">
			<div class="shipping_box">
				<div class="innerBox">
				<div class = "shipping_content">
					<div class="name">${vo.name}</div>
					<div class="phone">${vo.phone}</div>
					
					<div class="address">${vo.address}<button class="address_button" id="member_post" readonly onclick="findAddr()">주소 찾기</button></div>
				  <input id="member_addr" type="text" placeholder="Address" readonly> 
  				  <input type="text" placeholder="Detailed Address">
				</div>
				</div>
			</div>
		</div>
			<div class="discount_info">
				<div class="info">
					<p>할인</p>
				</div>
				<hr width="450" style="border: 1px solid black">
				<div class="discount_box">
					<div class="innerBox">
					<div class="discount_content">
					<div class="mileage">
						<input placeholder="${vo.mileage}"><div class="mileage_button" onclick="#">마일리지 사용</div>
						</div>
						<div class="coupon">
						<input placeholder="${vo.coupons}"><div class="coupon_button" onclick="#">쿠폰 사용</div>
						</div>
					</div>
					</div>

				</div>
			</div>
	</div>
	<div class="session_right">
		<div class="poduct_info">
			<div class="info">
				<p>주문 상품</p>
			</div>
			<hr width="450" style="border: 1px solid black">
			<div class="product_box">
			
				<div class="innerBox">
				
				<div class="product_content">
				<p>상품명</p>
				<p>수량</p>
				<p>가격</p>
				<p>도착예상날짜</p>
				</div>
					
					<div class="price_box">
					  <div class="product_price">
					    <div class="product-label">상품금액</div>
					    <div class="product-value">20,000원</div>
					  </div>
					  <div class="discount_price">
					    <div class="product-label">할인금액</div>
					    <div class="product-value">2,000원</div>
					  </div>
					  <div class="total_price">
					    <div class="product-label">총 결제 금액</div>
					    <div class="product-value">18,000원</div>
					  </div>
					</div>		
					<div class="payment-button">결제하기</div>
				</div>

			</div>
		</div>

	</div>

</div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../parts/footer.jsp"%>