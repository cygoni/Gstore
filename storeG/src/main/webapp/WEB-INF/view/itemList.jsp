<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../parts/header.jsp"%>

<div class="cate_container">
	<div class="cate_img">
		<img alt="" src="${ ctx }/img/cateImg.png"
			style="width: 100%;">
	</div>
	<div class="cate_name">
		<h2>카테고리 이름</h2>
	</div>
	<div class="cate_list" style="width: 80%; text-align: center;">
		<div class="cate_list" style="display: flex; flex-wrap: wrap;">
			<%-- <c:forEach items="########" var="item"> --%>
				<div class="product">
					<img src="${ ctx }/img/exItemimage.png"
						style="width: 100%; max-height: 150px;">
					<div class="product_info">
						<p>상품 이름</p>
						<p>상품 가격</p>
					</div>
				</div>
				<div class="product">
					<img src="${ ctx }/img/exItemimage.png"
						style="width: 100%; max-height: 150px;">
					<div class="product_info">
						<p>상품 이름</p>
						<p>상품 가격</p>
					</div>
				</div>
				<div class="product">
					<img src="${ ctx }/img/exItemimage.png"
						style="width: 100%; max-height: 150px;">
					<div class="product_info">
						<p>상품 이름</p>
						<p>상품 가격</p>
					</div>
				</div>
				<div class="product">
					<img src="${ ctx }/img/exItemimage.png"
						style="width: 100%; max-height: 150px;">
					<div class="product_info">
						<p>상품 이름</p>
						<p>상품 가격</p>
					</div>
				</div>
			<%-- </c:forEach> --%>
		</div>
	</div>
</div>



<%@ include file="../parts/footer.jsp"%>