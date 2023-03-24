<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>내정보 페이지</title>
<%@ include file="../parts/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/member.css">
<div class="myinfo_container">
	<div class="session">
		<div class="myinfo_content">

			<div class="content_top"><h3>내정보</h3>
			<button onclick= "location.href='myinfomodify.do'">내정보변경</button>
			<%--<button onclick= "location.href='deleteMember.do'">회원탈퇴</button> --%>
				<button class="delete" data-toggle="modal" data-target="#deleteModal">회원탈퇴</button>
			</div>
			
			<div class="content_mid">
				<div class="mid_name">
					<div class="info_name" >이름</div>
					<div class="user_name">${vo.name}</div>
					<div class="content_mid_end"></div>
				</div>
				<div class="mid_address">
					<div class="info_address">주소</div>
					<div class="user_address" >${vo.address}</div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_phone_no">
					<div class="info_phone_no">핸드폰 번호</div>
					<div class="user_phone_no">${vo.phone} </div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_email">
					<div class="info_email">이메일</div>
					<div class="user_email">${vo.email} </div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_mileage">
					<div class="info_mileage">마일리지</div>
					<div class="user_mileage">${vo.mileage}</div>
					<div class="content_mid_end"></div>

				</div>
				<div class="mid_coupon">
					<div class="info_coupon">쿠폰</div>
					<div class="user_coupon">${vo.coupons}</div>
					<div class="content_mid_end"></div>


				</div>
				<div class="mid_money">
					<div class="info_money">보유금액</div>
					<div class="user_money">${vo.money}</div>
					<div class="content_mid_end"></div>

				</div>
				
			</div>
			
			<div class="content_bottom"></div>

		</div>
	</div>
</div>

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="deleteModalLabel">회원탈퇴</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="member_delete">
									<form action="deleteMember.do" method="POST">
										<div class="member_delete_input" style="margin-bottom:10px">
											<input type="password" name="pw" placeholder="비밀먼호 입력">
										</div>


										<div class="member_login_btn">

											<input type="submit" class="btn btn-secondary" id="btn-delete" value="탈퇴하기">
											<input type="button" class="btn btn-secondary" value="취소하기"
												onclick="location.href='main.do'">

										</div>

									</form>
								</div>
							</div>
							
						</div>
					</div>
				</div>
<%@ include file="../parts/footer.jsp"%>