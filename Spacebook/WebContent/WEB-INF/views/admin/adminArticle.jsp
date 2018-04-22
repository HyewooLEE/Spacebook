<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<section>
	<!-- container -->
	<div class="container">
		<!-- profile-edit-wrap -->
		<div class="profile-edit-wrap">
			<div class="profile-edit-page-header">
				<h2>회원 관리</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>회원 관리</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="fixed-bar fl-wrap">
						<div class="user-profile-menu-wrap fl-wrap">
							<div class="user-profile-menu">
								<h3>마이 페이지</h3>
								<ul>
									<li><a href="profile.do"><i class="fa fa-user-o"></i>프로필
											수정</a></li>
									<li><a href="password.do"><i class="fa fa-unlock-alt"></i>비밀번호
											변경</a></li>
								</ul>
							</div>
							<!-- 일반 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 (일반)</h3>
                                    <ul>
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 예약리스트 <span>1</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>나의 찜공간 <span>2</span></a></li>
                                        <li><a href="inquireList.do"><i class="fa fa-comments-o"></i>1:1문의 </a></li>
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
                                        <li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
                                        <li><a href="dashboard-add-listing.html"><i class="fa fa-plus-square-o"></i>공간 정산정보</a></li>
                                    </ul>
                                </div>
							<c:if test="${login.mem_Id eq 'admin@admin.com' }">
							<div class="user-profile-menu">
								<h3>관리자 메뉴</h3>
								<ul>
									<li><a href="adminMember.do"><i class="fa fa-th-list"></i>회원 관리 </a></li>
									<li><a href="adminArticle.do" class="user-profile-act"><i class="fa fa-th-list"></i>게시글 관리 </a></li>
								</ul>
							</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="dashboard-list-box fl-wrap">
						<div class="dashboard-header fl-wrap">
							<form class="fl-wrap">
							<div class="box-widget-item fl-wrap pull-right" style="display: inline; width:300px; margin-bottom: 0px">
		                        <div class="box-widget search-widget pull-right">
		                                <input name="search" id="search" type="text" class="search" placeholder="검색하시오" value="">
		                                <button class="search-submit" id="submit_btn"><i class="fa fa-search transition"></i> </button>
		                        </div>
		                    </div>
		                    </form>
						</div>
						<%-- <c:if test="${page.articleCount == 0}"> --%>
						<div class="dashboard-list " style="width:100%">
							<div class="dashboard-message"  align="center">
										<h2>해당 결과물이 없습니다.</h2>
							</div>
						</div>
						<%-- </c:if> --%>
						<%-- <c:if test="${page.articleCount > 0}"> --%>
						<!-- dashboard-list end-->
						<div id="tableForm" class="dashboard-list-box fl-wrap">
						<c:forEach var="spaceAll" items="${spaceAll }">
						<div class="dashboard-list " style="width:100%">
							<div class="dashboard-message" >
								<div class="dashboard-message-avatar">
									<img src="${spaceAll.space_img1}" style="object-fit: cover; width:50px; height: 50px;">
								</div>
								<div class="dashboard-message-text " style=" padding-top:15px;">
									<a style="cursor:pointer; color:#000; font-size: 16px; font-weight: 600;" class="toggle"  href="#">
										${spaceAll.space_name}
										&nbsp;&nbsp;&nbsp;<span style="color:#4DB7FE; font-size:12px;">${spaceAll.space_category}</span>
										&nbsp;&nbsp;&nbsp; host by &nbsp;&nbsp;${spaceAll.memberVO.mem_Name}
									</a>
 								</div>
 								<button class="btn color-bg flat-btn" id="deleteArticle" onClick="return deleteArticle(${spaceAll.space_no});">삭제</button>
							</div>
						</div>
						</c:forEach>
						</div>
						<!-- dashboard-list end-->
						<%-- </c:if> --%>
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
<!--section -->

