<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../parts/header.jsp" %>

<div class="myOrder_container" style="border: 1px solid black">
	<div class="myOrder_header">
		<h2>주문내역</h2>
	</div>
	
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
	
	<div class="myOrder_content" >
		<table>
		
			<tr>
				<th colspan="1">날짜</th>
				<th colspan="4">상품정보</th>
				<th colspan="1">배송상태</th>
				<th colspan="1">비고</th>
			</tr>
		
		
			<%-- <c:forEach var="order" items="${orders}"> --%>
				<tr >
					<td>2023-03-20</td>
					<td colspan="4">뭐 여러가지 상품이름 주문수량 주문번호 총가격(할인얼마나) 정도 </td>
					<td>배송상태</td>
					<td>배송완료전에 취소 완료후엔 삭제& 후기쓰기</td>
					
				</tr>
			<%-- </c:forEach> --%>
		
	</table>
	</div>
	
	<div class="myOrder_footer">
		
	</div>

</div>
	

<%@ include file ="../parts/footer.jsp" %>