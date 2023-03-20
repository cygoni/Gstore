<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="./parts/header.jsp" %>

		 <script type="text/javascript" src="script/main.js" defer>
			</script>
			<div class="top">
				<img class="slide" src="img/main/header.png">
				<img class="slide" src="img/main/main02.jpg">
				<img class="slide" src="img/main/main03.jpg">
				<img class="slide" src="img/main/main04.jpg">
				<img class="slide" src="img/main/main05.jpg">
				<img class="slide" src="img/main/main06.jpg">
				<img class="slide" src="img/main/main07.jpg">
				<img class="slide" src="img/main/main08.jpg">
			</div>
			<h1><a href="itemList.do">리스트go</a></h1>
			<div class="new_item">
				<h1>신상품</h1>
				<div class="item_content">
					<div class="itemlist">
						<img src="img/poketmon/뮤츠.jpg" onclick="location.href='payment.do'">
						<div class="text_box">
							<p class="text">뮤츠</p>
							<p class="price">10,000</p>
						</div>

					</div>

					<div class="itemlist">
						<img src="img/poketmon/파이리.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">파이리</p>
							<p class="price">15,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/잠만보.png" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">잠만보</p>
							<p class="price">20,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/피카츄.jpg" onclick="location.href='main.do'">
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
						<img src="img/poketmon/탕구리.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">탕구리</p>
							<p class="price">25,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/푸린.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">푸린</p>
							<p class="price">20,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/고라파덕.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">고라파덕</p>
							<p class="price">15,000</p>
						</div>
					</div>
					<div class="itemlist">
						<img src="img/poketmon/뮤.jpg" onclick="location.href='main.do'">
						<div class="text_box">
							<p class="text">뮤</p>
							<p class="price">5,000</p>
						</div>
					</div>
				</div>
			</div>


			<%@ include file="./parts/footer.jsp" %>
				</session>