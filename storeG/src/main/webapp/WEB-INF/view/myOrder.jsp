<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../parts/header.jsp"%>

<div class="myOrder_container" style="border: 1px solid black">
	<div class="myOrder_header">
		<h2>주문내역</h2>
	</div>

	<%-- <c:if test="${not empty param.item_no}">
		<script>
    // 현재 URL에서 파라미터 제거
    var newUrl = window.location.pathname + window.location.search.replace(/[\?&]item_no=[^&]+/gi,'');
    // 새로운 URL로 페이지 이동
    window.location.replace(newUrl);
</script>
	</c:if> --%>

	<div class="myOrder_search" style="border: 1px solid black">
		<span>기간별조회</span>
		<button>1주일</button>
		<button>15일</button>
		<button>1개월</button>
		<button>2월</button>
		<button>1월</button>
		<button>12월</button>
		<button>11월</button>
		<button>10월</button>
	</div>

	<div class="myOrder_content">
		<%-- <table>

			<tr>
				<th colspan="1">날짜</th>
				<th colspan="4">상품정보</th>
				<th colspan="1">배송상태</th>
				<th colspan="1">비고</th>
			</tr>

			<tr>
				<td>2023-03-20</td>
				<td colspan="4">뭐 여러가지 상품이름 주문수량 주문번호 총가격(할인얼마나) 정도</td>
				<td>배송상태</td>
				<td>배송완료전에 취소 완료후엔 삭제& 후기쓰기</td>

			</tr>
			
			<c:if test="${not empty list}">
				<c:forEach var="list" items="${list}">
					<td></td>
					<td colspan="4">
						<p>상품명 :${list.item}</p>
						<p>주문번호 : ${list.orderNo}</p>
					</td>
					<td></td>
					<td></td>
				</c:forEach>
			</c:if>
			
		</table> --%>
		<table>
			<tr>
				<th colspan="1">날짜</th>
				<th colspan="4">상품정보</th>
				<th colspan="1">배송상태</th>
				<th colspan="1">비고</th>
			</tr>
			<c:if test="${not empty list}">
				<c:forEach var="order" items="${list}">
					<tr>
						 <%
  java.util.Date date = new java.util.Date();
  java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
%> 
						<td><%= sdf.format(date) %></td>
						<td colspan="4">
							<p>상품명: ${order.item}</p>
							<p>주문번호: ${order.orderNo}</p> <%-- <p>수량: ${order.qty}</p> --%>
							<p>총 가격: ${order.totalPrice}원 (${order.discountPrice}원 할인)</p>
						</td>
						<td><c:choose>
								<c:when test="${order.deliveryStatus == 1}">배송 준비 중</c:when>
								<c:when test="${order.deliveryStatus == 2}">배송 중</c:when>
								<c:when test="${order.deliveryStatus == 3}">배송 완료</c:when>
								<c:otherwise>알 수 없음</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when
									test="${order.deliveryStatus == 1 or order.deliveryStatus == 2}">
									<a href="deleteOrder.do?order_no=${ order.orderNo }&item=${ order.item }">주문 취소</a>
								</c:when>
								<c:when test="${order.deliveryStatus == 3}">
									<a href="#">리뷰 작성</a>
								</c:when>
								<c:otherwise>알 수 없음</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>

	</div>

	<div class="myOrder_footer">

		<c:out value="${cart.items}" />
		<br>
		<c:forEach var="item" items="${cart.items}">
			<c:out value="${item[qty]}.val()" />
			<br>
		</c:forEach>
	</div>

</div>


<%@ include file="../parts/footer.jsp"%>