<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!--section -->
<section id="sec1">
	<!-- container -->
	<div class="container">
		<!-- profile-edit-wrap -->
		<div class="profile-edit-wrap">
			<div class="profile-edit-page-header">
				<h2>비밀번호 변경</h2>
				<div class="breadcrumbs">
					<a href="#">홈</a><span>비밀번호 변경</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="fixed-bar fl-wrap">
						<div class="user-profile-menu-wrap fl-wrap">
							<!-- user-profile-menu-->
							<div class="user-profile-menu">
								<h3>비밀번호 변경</h3>
								<ul>
									<li><a href="profile.do"><i class="fa fa-user-o"></i>프로필 수정</a></li>
									<li><a href="password.do"  class="user-profile-act"><i class="fa fa-unlock-alt"></i>비밀번호 변경</a></li>
								</ul>
							</div>
							<!-- user-profile-menu end-->
							<!-- user-profile-menu-->
							<!-- 일반 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 (일반)</h3>
                                    <ul>
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 예약리스트 <span>1</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>나의 찜공간 <span>2</span></a></li>
                                        <li><a href="dashboard-review.html"><i class="fa fa-comments-o"></i>1:1문의 </a></li>
                                    </ul>
                                </div>
                                <!-- user-profile-menu end-->  
                 			<!-- 호스트 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 관리 (호스트)</h3>
                                    <ul>
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 공간 <span>1</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>예약현황 <span>2</span></a></li>
                                        <li><a href="dashboard-review.html"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
                                        <li><a href="dashboard-add-listing.html"><i class="fa fa-plus-square-o"></i>공간 정산정보</a></li>
                                    </ul>
                                </div>
							<c:if test="${login.mem_Auth eq 'ROLE_ADMIN' }">
							<div class="user-profile-menu">
								<h3>관리자 메뉴</h3>
								<ul>
									<li><a href="adminMember.do"><i class="fa fa-th-list"></i>회원 관리 </a></li>
									<li><a href="admin/article.do"><i class="fa fa-th-list"></i>게시글 관리 </a></li>
								</ul>
							</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="col-md-9">
				<form action="passwordLogin.do" method="POST" id="pwdChange">
					<!-- profile-edit-container-->
					<div class="profile-edit-container">
						<div class="profile-edit-header fl-wrap" style="margin-top: 30px">
							<h4>비밀번호 변경하기</h4>
						</div>
						<div class="custom-form no-icons">
							<div class="pass-input-wrap fl-wrap">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<input type="hidden" name="email" value="${login.mem_Id }"/>
								<label>현재 비밀번호</label> <input type="password" name="passwd" class="pass-input" placeholder="" id="pwd_Now" /> 
								<span class="eye"><i class="fa fa-eye" aria-hidden="true"></i> </span>
							</div>
							<div class="pass-input-wrap fl-wrap">
								<label>새로운 비밀번호</label> <input type="password" class="pass-input" placeholder=""name="passwdChange" id="pwd_chg1"/> 
								<span class="eye"><i class="fa fa-eye" aria-hidden="true"></i> </span>
							</div>
							<div class="pass-input-wrap fl-wrap">
								<label>새로운 비밀번호 확인</label> <input type="password" class="pass-input" placeholder="" name="passwdChange2"  id="pwd_chg2"/> 
								<span class="eye"><i class="fa fa-eye" aria-hidden="true"></i> </span>
							</div>
							<button class="btn  big-btn  color-bg flat-btn" type="button" onClick="return CheckPwd();">
								변경하기<i class="fa fa-angle-right"></i>
							</button>
						</div>
					</div>
					<!-- profile-edit-container end-->
				</form>
				</div>
			</div>
		</div>
		<!--profile-edit-wrap end -->
	</div>
	<!--container end -->
</section>
<!-- section end -->
<div class="limit-box fl-wrap"></div>
<!--section -->
