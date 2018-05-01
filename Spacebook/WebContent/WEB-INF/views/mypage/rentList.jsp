<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<section>
	<!-- container -->
	<div class="container">
		<!-- profile-edit-wrap -->
		<div class="profile-edit-wrap">
			<div class="profile-edit-page-header">
				<h2>예약 리스트</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>예약 리스트</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="fixed-bar fl-wrap">
						<div class="user-profile-menu-wrap fl-wrap">
							<!-- user-profile-menu-->
							<div class="user-profile-menu">
								<h3>마이 페이지</h3>
								<ul>
									<li><a href="profile.do"><i class="fa fa-user-o"></i>나의 프로필</a></li>
									<li><a href="password.do"><i class="fa fa-unlock-alt"></i>비밀번호 	변경</a></li>
								</ul>
							</div>
							<!-- 일반 -->
							<!-- user-profile-menu-->
							<div class="user-profile-menu">
								<h3>나의 공간 (일반)</h3>
								<ul>
									<li><a href="myRentList.do"><i class="fa fa-th-list"></i>예약리스트</a></li>
									<li><a href="favoriteList.do"><i class="fa fa-heart"></i>나의 찜공간</a></li>
									<li><a href="inquireList.do"><i class="fa fa-comments-o"></i>나의 1:1문의</a></li>
								</ul>
							</div>
							<!-- user-profile-menu end-->
							<!-- 호스트 -->
							<!-- user-profile-menu-->
							<div class="user-profile-menu">
								<h3>나의 공간 관리 (호스트)</h3>
								<ul>
									<li><a href="mySpaceList.do"><i class="fa fa-th-list"></i>나의 공간관리</a></li>
									<li><a href="rentList.do" class="user-profile-act"> <i class="fa fa-calendar-check-o"></i>공간 예약현황</a></li>
									<li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의관리</a></li>
								</ul>
							</div>
							<!-- user-profile-menu end-->
							<c:if test="${login.mem_Auth eq 'ROLE_ADMIN' }">
								<div class="user-profile-menu">
									<h3>관리자 메뉴</h3>
									<ul>
										<li><a href="adminMember.do"><i class="fa fa-th-list"></i>회원 관리</a></li>
										<li><a href="adminArticle.do"><i class="fa fa-th-list"></i>게시글 관리</a></li>
									</ul>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-12">
							<!-- profile-edit-container-->
							<div class="profile-edit-container">
								<div class="profile-edit-header fl-wrap col-md-10" style="padding-bottom: 0px;">
									<h4>예약 리스트</h4>
								</div>
								<div class="profile-edit-header fl-wrap col-md-2">
									<a href="exportRentList.do" class="btn transparent-btn">전체 다운로드</a>
								</div>
							</div>
							<div>
								<table class="table table-bordred table-striped table-hover">
									<thead>
										<tr>
											<th style="text-align: center">공간명</th>
											<th style="text-align: center">예약자</th>
											<th style="text-align: center">결제방법</th>
											<th style="text-align: center">남긴말</th>
											<th style="text-align: center">작성일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="rentList" items="${rentList}">
											<tr style="text-align: center; cursor: pointer;">
												<td width="10%">${rentList.spaceDTO.space_name}</td>
												<td width="10%">${rentList.rent_name}</td>
												<td width="10%">${rentList.rent_pay_method}</td>
												<td width="20%">${rentList.rent_note}</td>
												<td width="10%">${rentList.rent_writedate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- Pagination -->
								<div class="pagination">
									<c:if test='${paging.previous != ""}'>
                                    	<a href="/Spacebook/rentList.do?pageNum=${paging.previous}" class="prevposts-link">&lt;</a>
                                    </c:if>
                                    <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
                                   		<a href="/Spacebook/rentList.do?pageNum=${i}" class="current-page">${i}</a>
                                    </c:forEach>
                                    <c:if test='${paging.nextPage != ""}'>
                                    	<a href="/Spacebook/rentList.do?pageNum=${paging.nextPage}" class="nextposts-link">&gt;</a>
                                    </c:if>
                                </div>
								<!-- END Pagination -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--profile-edit-wrap end -->
	</div>
	<!--container end -->
</section>
<!-- section end -->
<div class="limit-box fl-wrap"></div>
<!-- javascript start -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/mypage/myRentList.js"></script>
<!-- javascript end -->
