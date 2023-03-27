<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="./parts/header.jsp" %>


		<script type="text/javascript" src="script/main.js" defer>

		</script>
		<div class="top">
			<img class="slide" src="img/main/lostark.jpg"> <img class="slide" src="img/main/onepiece.jpg"> <img
				class="slide" src="img/main/overwatch.jpg"> <img class="slide" src="img/main/poketmon.jpg"> <img
				class="slide" src="img/main/silva.jpg"> <img class="slide" src="img/main/titan.jpg">


		</div>

		<div class="main_container">

			<div class="new-pdt">
				<div>
					<h2>신 상 품</h1>
				</div>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
					<c:forEach var="nlist" items="${nList}">
						<c:if test="${nlist.category eq 1}">
							<c:set var="ifolder" value="LostArk" />
						</c:if>
						<c:if test="${nlist.category eq 2}">
							<c:set var="ifolder" value="OverWatch" />
						</c:if>
						<c:if test="${nlist.category eq 3}">
							<c:set var="ifolder" value="SylvanianFamilies" />
						</c:if>
						<c:if test="${nlist.category eq 4}">
							<c:set var="ifolder" value="poketmon" />
						</c:if>
						<c:if test="${nlist.category eq 5}">
							<c:set var="ifolder" value="titan" />
						</c:if>
						<c:if test="${nlist.category eq 6}">
							<c:set var="ifolder" value="onepiece" />
						</c:if>
						<%-- <c:out value="${nlist.itemNo}"></c:out> --%>
							<div class="col col-sm-6 col-md-3">
								<a href="${ctx}/product.do?itemNo=${nlist.itemNo}" style="text-decoration: none">
									<div class="card shadow-sm">
										<div
											style="width: 100%; display: flex; justify-content: center; align-items: center;">
											<img src="${ctx}/img/${ifolder}/${nlist.img}" alt="Alt Text"
												class="img-fluid">
										</div>
										<div class="card-body">
											<p class="card-title">${nlist.pName}</p>
											<p class="card-text">${nlist.price}원</p>
											<div class="d-flex justify-content-between align-items-center">
												<div class="btn-group">
													<button type="button" class="item_heart">
														<img src="${ctx}/img/suit-heart.svg" alt="Cart Icon" />
													</button>
													<button type="button" class="item_cart">
														<img src="${ctx}/img/cart.svg" alt="Cart Icon" />
													</button>
												</div>
												<small class="text-muted">${nlist.qty}</small>
											</div>
										</div>
									</div>
								</a>
							</div>
					</c:forEach>

				</div>
			</div>

			<div class="popular">
				<div>
					<h2>인 기 상 품</h1>
				</div>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
					<c:forEach var="plist" items="${pList}">
						<c:if test="${plist.category eq 1}">
							<c:set var="ifolder" value="LostArk" />
						</c:if>
						<c:if test="${plist.category eq 2}">
							<c:set var="ifolder" value="OverWatch" />
						</c:if>
						<c:if test="${plist.category eq 3}">
							<c:set var="ifolder" value="SylvanianFamilies" />
						</c:if>
						<c:if test="${plist.category eq 4}">
							<c:set var="ifolder" value="poketmon" />
						</c:if>
						<c:if test="${plist.category eq 5}">
							<c:set var="ifolder" value="titan" />
						</c:if>
						<c:if test="${plist.category eq 6}">
							<c:set var="ifolder" value="onepiece" />
						</c:if>
						<div class="col col-sm-6 col-md-3">
							<a href="${ctx}/product.do?itemNo=${plist.itemNo}" style="text-decoration: none">
								<div class="card shadow-sm">
									<div
										style="width: 100%; display: flex; justify-content: center; align-items: center;">
										<img src="${ctx}/img/${ifolder}/${plist.img}" alt="Alt Text" class="img-fluid">
									</div>
									<div class="card-body">
										<p class="card-title">${plist.pName}</p>
										<p class="card-text">${plist.price}원</p>
										<div class="d-flex justify-content-between align-items-center">
											<div class="btn-group">
												<button type="button" class="item_heart">
													<img src="${ctx}/img/suit-heart.svg" alt="Cart Icon" />
												</button>
												<button type="button" class="item_cart">
													<img src="${ctx}/img/cart.svg" alt="Cart Icon" />
												</button>
											</div>
											<small class="text-muted">${plist.qty}</small>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>

				</div>
			</div>

		</div>

		<%@ include file="./parts/footer.jsp" %>
			</session>