<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../parts/header.jsp"%>

<div class="cate_container">
	<div class="cate_img">
		<img alt="" src="${ ctx }/img/cateImg.png" style="width: 100%;">
	</div>
	<div class="cate_name">
		<h2>카테고리 이름</h2>
	</div>
	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
				<c:forEach var="list" items="${list}">
					<c:if test="${list.category eq 1}">
						<c:set var="ifolder" value="LostArk" />
					</c:if>
					<div class="col col-sm-6 col-md-3">
						<a href="${ctx}/product.do?itemNo=${list.itemNo}" style="text-decoration: none">
							<div class="card shadow-sm">
								<div
									style="width: 100%; display: flex; justify-content: center; align-items: center;">
									<img src="${ctx}/img/${ifolder}/${list.img}" alt="Alt Text"
										class="img-fluid">
								</div>
								<div class="card-body">
									<p class="card-title">${list.pName}</p>
									<p class="card-text">${list.price}원</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button" class="item_heart">
												<img src="${ctx}/img/suit-heart.svg" alt="Cart Icon" />
											</button>
											<button type="button" class="item_cart">
												<img src="${ctx}/img/cart.svg" alt="Cart Icon" />
											</button>
										</div>
										<small class="text-muted">${list.qty}</small>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>

			</div>



			<%@ include file="../parts/footer.jsp"%>