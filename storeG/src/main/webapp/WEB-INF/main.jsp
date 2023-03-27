<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="./parts/header.jsp" %>

		 <script type="text/javascript" src="script/main.js" defer>
			</script>
			<div class="top">
				<img class="slide" src="img/main/lostark.jpg">
				<img class="slide" src="img/main/onepiece.jpg">
				<img class="slide" src="img/main/overwatch.jpg">
				<img class="slide" src="img/main/poketmon.jpg">
				<img class="slide" src="img/main/silva.jpg">
				<img class="slide" src="img/main/titan.jpg">
			
			</div>
			<h1><a href="itemList.do">리스트go</a></h1>
			<h1><a href="itemList2.do">오버워치</a></h1>
			<h1><a href="itemList3.do">실바</a></h1>
			<h1><a href="itemList4.do">포켓몬스터</a></h1>
			<h1><a href="itemList5.do">진격의거인</a></h1>
			<h1><a href="itemList6.do">원피스</a></h1>
			<div class="new_item">
				<h1>신상품</h1>
				<div class="item_content">
					<div class="itemlist">
						<img src="img/poketmon/poket01.jpg" onclick="location.href='payment.do'">
						<div class="text_box">
							<p class="text">뮤츠</p>
							<p class="price">10,000</p>
						</div>

					</div>

					<div class="itemlist">
						<img src="img/poketmon/poket02.jpg" onclick="location.href='itemsInsertPage.do'">
						<div class="text_box">
							<p class="text">파이리</p>
							<p class="price">15,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/poket03.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">잠만보</p>
							<p class="price">20,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/poket04.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">피카츄</p>
							<p class="price">30,000</p>
						</div>
					</div>
				</div>
			</div>
			<div class="best_item">
				<a href="product.do">
					<h1>인기 상품</h1>
				</a>
				<div class="item_content">
					<div class="itemlist">
						<img src="img/poketmon/poket05.png" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">탕구리</p>
							<p class="price">25,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/poket06.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">푸린</p>
							<p class="price">20,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/poket07.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">고라파덕</p>
							<p class="price">15,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/poket08.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">뮤</p>
							<p class="price">5,000</p>
						</div>
					</div>
				</div>
			</div>


			<%@ include file="./parts/footer.jsp" %>
				</session>