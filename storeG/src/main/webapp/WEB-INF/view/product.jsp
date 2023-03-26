<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../parts/header.jsp" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

			<div class="product_container">
				<hr style="border: 3px solid black;">
				<div class="product_top">
					<div class="product_top_left">
						<img class="product_main" alt="" src="${ctx}/img/${cateF}/${item.img}">
						<ul class="product_ul">
							<li><img alt=" " src="${ctx}/img/${cateF}/${item.img}"></li>
							<c:if test="${not empty item.img_hover}">
								<c:set var="ah"
									value="${fn:substring(item.img_hover, 1, fn:length(item.img_hover)-2)}" />
								<c:set var="imgArr" value="${fn:split(ah, ',')}" />

								<c:forEach var="img" items="${imgArr}">
									<c:set var="imgWithoutQuotes" value="${fn:replace(img, '\\\"', '')}" />
						<%-- <c:out value="${ fn:trim(imgWithoutQuotes) }"></c:out> --%>
						<li><img alt=""
							src="${ctx}/img/${cateF}/${fn:trim(imgWithoutQuotes)}"></li>
					</c:forEach>
				</c:if>
			</ul>
		</div>
		<script type="text/javascript">
			const productMain = document.querySelector(' .product_main'); const
				productLiList = document.querySelectorAll('.product_ul li'); for (let i = 0; i <
					productLiList.length; i++) {
						const productLi = productLiList[i]; const
							productImg = productLi.querySelector('img');
				productLi.addEventListener('mouseover', function () {
					productMain.src = productImg.src;
				});
			} </script>

										<form action="payment.do?itemNo=${item.itemNo}" method="post">
											<div class="product_top_right">
												<img alt="" src="${ctx}/img/productEvent.jpg">
												<div class="product_cate">
													<span>${cateF}</span>
												</div>
												<div class="product_name" name="pName">
													<h2>
														<p class="product_name_p">${item.pName }</p>
													</h2>
												</div>
												<p class="product_line"></p>
												<dl>
													<dt>판매가</dt>
													<dd>
														<strong class="product_price">${item.price}원</strong>
													</dd>
												</dl>
												<dl>
													<dt>쿠폰적용가</dt>
													<dd>
														<strong class="product_price">쿠폰 적용한 가격 [쿠폰%]</strong> &nbsp; <a
															href="#####" class="cp_down"><span>쿠폰다운</span></a>
													</dd>
												</dl>
												<dl>
													<dt>마일리지</dt>
													<dd>
														<strong class="product_price">마일리지</strong>
													</dd>
												</dl>
												<dl>
													<dt>배송구분</dt>
													<dd>
														<div class="btn-group" role="group"
															aria-label="Button group with nested dropdown">
															<button type="button" class="btn btn-success"
																id="btn1">업체조건배송</button>
															<div class="btn-group" role="group">
																<button id="btnGroupDrop2" type="button"
																	class="btn btn-success dropdown-toggle"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false"></button>
																<div class="dropdown-menu"
																	aria-labelledby="btnGroupDrop2"
																	style="display: none;">
																	<a class="dropdown-item">업체조건배송</a> <a
																		class="dropdown-item">Gstore직접배송</a>
																	<a class="dropdown-item">본인직접수령</a>
																</div>
															</div>
														</div>
													</dd>
													<script>
														$(function () {
															// 드롭다운 버튼 클릭 시 메뉴 보이기
															$("#btnGroupDrop2").click(
																function () {
																	/* $(".dropdown-menu").css("opacity", "1"); */// 메뉴 보이기
																	$("#btnGroupDrop2").css(
																		"aria-expanded", "true");
																	$(".dropdown-menu").css("display",
																		"block");
																});

															// 드롭다운 메뉴에서 아이템 클릭 시 버튼 내용 변경 및 메뉴 숨기기
															$(".dropdown-item").click(
																function () {
																	var selectedItem = $(this).text(); // 선택한 아이템의 텍스트
																	$("#btn1").text(selectedItem); // 버튼 내용 변경
																	/* $(".dropdown-menu").css("opacity", "0"); */// 메뉴 숨기기
																	$("#btnGroupDrop2").css(
																		"aria-expanded", "false");
																	$(".dropdown-menu").css("display",
																		"none");
																});
														});
														$(function () {
															// 드롭다운 메뉴에서 아이템 클릭 시 버튼 내용 변경
															$(".dropdown-item").click(function () {
																var selectedItem = $(this).text(); // 선택한 아이템의 텍스트
																$("#btn1").text(selectedItem); // 버튼 내용 변경
															});
														});
													</script>
												</dl>
												<dl>
													<dt>주문수량</dt>
													<dd>
														<input type="text" name="pdt_qty" maxlength="4" pattern="[0-9]*"
															value="1"> <span class="pdt_ko"> 개 </span>
														<div class="updownbtn">
															<div class="up">
																<!-- <button class="btn btn-success"></button> -->
															</div>
															<div class="down">
																<button class="btn btn-success"></button>
															</div>
														</div>
														<script type="text/javascript">
															const inputElement = document
																.querySelector('input[name=pdt_qty]'); // input 엘리먼트 선택

															const upButton = document.querySelector('.up'); // up 버튼 선택
															upButton
																.addEventListener(
																	'click',
																	function () {
																		const currentValue = parseInt(inputElement.value); // 현재 값 가져오기
																		if (!isNaN(currentValue)) { // 현재 값이 숫자인 경우에만 증가
																			inputElement.value = currentValue + 1; // 1 증가한 값을 새로운 값으로 설정
																		}
																	});

															const downButton = document.querySelector('.down'); // down 버튼 선택
															downButton
																.addEventListener(
																	'click',
																	function () {
																		const currentValue = parseInt(inputElement.value); // 현재 값 가져오기
																		if (!isNaN(currentValue)
																			&& currentValue > 1) { // 현재 값이 1보다 큰 숫자인 경우에만 감소
																			inputElement.value = currentValue - 1; // 1 감소한 값을 새로운 값으로 설정
																		}
																	});
														</script>

													</dd>
												</dl>
												<div class="pdt_btn3">
													<button class="btn btn-success">찜하기</button>

													<button type="submt" class="btn btn-success">바로구매</button>
													<button class="btn btn-success">장바구니</button>
													<button class="btn btn-success"
														onclick="location.href='payment.do'">바로구매</button>
													<button class="btn btn-success"
														onclick="location.href=`cart.do?item_no=${item.itemNo}`">장바구니</button>

												</div>
										</form>
					</div>
				</div>

				<%-- onclick="location.href='payment.do'" onclick="location.href='cart.do?item_no=${item.item_no}'" --%>

					<hr style="border: 2px solid black;">

					<div class="product_mid">
						<div class="pdt_head">
							<h2>제 품 설 명</h2>
						</div>

						<c:if test="${not empty item.data}">
							<c:set var="data" value="${fn:substring(item.data, 1, fn:length(item.data)-2)}" />
							<c:set var="dataArr" value="${fn:split(data, ',')}" />

							<c:forEach var="img2" items="${dataArr}">
								<c:set var="imgWithoutQuotes2" value="${fn:replace(img2, '\\\"', '')}" />
						<c:out value="${ fn:trim(imgWithoutQuotes2) }"></c:out>
						<img alt=""
							src="${ctx}/img/${cateF}/${fn:trim(imgWithoutQuotes2)}">
					</c:forEach>
				</c:if>
				<c:if test="${empty item.data}">
					<img alt=" " src="${ctx}/img/${cateF}/${item.img}">
				</c:if>
		</div>
		<div class="product_bot">
			<div class="">
				<h2>상 품 후 기</h2>
			</div>
			<div class="pdt_review">
				<div class="pdt_review_rating">별점</div>
				<div class="pdt_review_content">상품이 맘에들어요 추천합니다</div>
				<div class="pdt_review_writer">작성자:john123 등록일:2023.03.20</div>
			</div>
		</div>
	</div>


	<%@ include file="../parts/footer.jsp"%>