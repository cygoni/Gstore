<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<div class="name">박병준</div>
					<div class="phone">010-1234-5678</div>
					<div class="address">서울시 강남구 역삼동<div class="address_button">주소 찾기</div></div>
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
						<input placeholder="마일리지사용"><div class="mileage_button">마일리지 사용</div>
						</div>
						<div class="coupon">
						<input placeholder="쿠폰사용"><div class="coupon_button">쿠폰 사용</div>
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


<%@ include file="../parts/footer.jsp"%>