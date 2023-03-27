<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../parts/header.jsp"%>
<script type="text/javascript" src="script/join.js" defer></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css">
<div class="itemsinsert_container">
	<form action="itemsInsert.do" method="post">
		<table class="itemsinsert_content" style="border: 1px solid black">
			<tr class="msg">
				<td><span id="msg" data-val="${ctx}"></span></td>
			</tr>

			<tr>
				<th><label for="img-upload">이미지:</label></th>
				<td><label for="img-upload" class="file-upload-label"
					id="file-label"> </label> <input type="file" id="img-upload"
					name="img" accept="image/*" required
					onchange="updateFileLabel(event)"></td>
			</tr>
			<tr>
				<th><label for="pName">상품명:</label></th>
				<td><input type="text" id="pName" name="pName" required></td>
			</tr>
			<tr>
				<th><label for="price">가격:</label></th>
				<td><input type="number" id="price" name="price" required></td>
			</tr>
			<tr>
				<th><label for="category">카테고리:</label></th>
				<td><input type="number" id="category" name="category" required></td>
			</tr>
			<tr>
				<th><label for="imghover-upload">이미지호버:</label></th>
				<td><label for="imghover-upload" class="file-upload-label"
					id="imghover-label"></label> <input type="file"
					id="imghover-upload" name="imghover" accept="image/*" required
					multiple onchange="updateFileLabel(event)"></td>
			</tr>
			<tr>
				<th><label for="data-upload">설명이미지:</label></th>
				<td><label for="data-upload" class="file-upload-label"
					id="data-label"></label> <input type="file" id="data-upload"
					name="data" accept="image/*" required multiple
					onchange="updateFileLabel(event)"></td>
			</tr>

		</table>
		<div class="itemsinsert_footer">
			<input type="submit" value="상품추가" class="col-1 btn btn-success">
			<input type="reset" value="취소" class="col-1 btn btn-success" />
		</div>
	</form>

</div>

<%@ include file="../parts/footer.jsp"%>