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
							<!-- user-profile-menu-->
							<div class="user-profile-menu">
							<c:set var="str1" value="${login.mem_Id }"/>
							<c:set var="str2" value="@"/>
								<h3>마이 페이지</h3>
								<ul>
								<c:if test="${login.mem_Auth eq 'ROLE_ADMIN' ||login.mem_Auth eq 'ROLE_USER' }">
									<li><a href="profile.do"><i class="fa fa-user-o"></i>나의 프로필</a></li>
								</c:if>
								<c:if test="${fn:contains(str1, str2)}">
									<li><a href="password.do"><i class="fa fa-unlock-alt"></i>비밀번호 변경</a></li>
								</c:if>
								</ul>
							</div>
							<!-- 일반 -->
                                <!-- user-profile-menu-->
                                <c:if test="${login.mem_Auth eq 'ROLE_USER' || login.mem_Auth eq 'ROLE_GUEST'}">
	                                <div class="user-profile-menu">
	                                    <h3>나의 공간 (일반)</h3>
	                                    <ul>	
	                                    <c:if test="${login.mem_Auth eq 'ROLE_USER'}">
	                                        <li><a href="myRentList.do"><i class="fa fa-th-list"></i>예약리스트</a></li>
	                                    </c:if>
	                                        <li><a href="favoriteList.do"><i class="fa fa-heart"></i>나의 찜공간</a></li>
	                                        <li><a href="inquireList.do"><i class="fa fa-comments-o"></i>나의 1:1문의</a></li>
	                                    </ul>
	                                </div>
                                </c:if>
                                <!-- user-profile-menu end-->  
                 			<!-- 호스트 -->
                                <!-- user-profile-menu-->
                              	<c:if test="${login.mem_Auth eq 'ROLE_USER'}">
                                <div class="user-profile-menu">
                                    <h3>나의 공간 관리 (호스트)</h3>
                                    <ul>
                                        <li><a href="mySpaceList.do"><i class="fa fa-th-list"></i>나의 공간관리</a></li>
                                        <li><a href="rentList.do"> <i class="fa fa-calendar-check-o"></i>공간 예약현황</a></li>
                                        <li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의 관리</a></li>
                                    </ul>
                                </div>
                                </c:if>
							<!-- user-profile-menu end-->
							<c:if test="${login.mem_Auth eq 'ROLE_ADMIN'}">
							<div class="user-profile-menu">
								<h3>관리자 메뉴</h3>
								<ul>
									<li><a href="adminMember.do"><i class="fa fa-th-list"></i>회원 관리</a></li>
									<li><a href="adminArticle.do"  class="user-profile-act"><i class="fa fa-th-list"></i>게시글 관리</a></li>
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
						<%-- <c:if test="${page.articleCount > 0}"> --%>
						<div id="tableForm" class="dashboard-list-box fl-wrap">
							<c:forEach var="spaceAll" items="${spaceAll }">
							<div class="dashboard-list " style="width:100%">
								<div class="dashboard-message" >
									<div class="dashboard-message-avatar">
										<img src="${spaceAll.space_img1}" style="object-fit: cover; width:50px; height: 50px;">
									</div>
									<div class="dashboard-message-text md-9" style=" padding-top:15px;" >
										<a style="cursor:pointer; color:#000; font-size: 16px; font-weight: 600;" class="toggle"  href="#">
											${spaceAll.space_name}
											&nbsp;&nbsp;&nbsp;<span style="color:#4DB7FE; font-size:12px;">${spaceAll.space_category}</span>
											&nbsp;&nbsp;&nbsp; host by &nbsp;&nbsp;${spaceAll.memberVO.mem_Name}
										</a>
										<div class="accordion-inner">
											<div class="booking-details fl-wrap">
												<span class="booking-title">주소</span> : 
												<span class="booking-text"><a href="#">${spaceAll.space_addr1} ${spaceAll.space_addr2}</a></span>
											</div>
											<div class="booking-details fl-wrap">
												<span class="booking-title">웹사이트</span> : 
												<span class="booking-text"><a href="#">${spaceAll.space_site}</a></span>
											</div>
											<div class="booking-details fl-wrap">
												<span class="booking-title">전화번호</span> : 
												<span class="booking-text"><a href="#">${spaceAll.space_phone}</a></span>
											</div>
											<div class="booking-details fl-wrap">
												<span class="booking-title">운영시간</span> : 
												<span class="booking-text"><a href="#">${spaceAll.space_open} ~ ${spaceAll.space_close}</a></span>
											</div>
											<div class="booking-details fl-wrap">
												<span class="booking-title">금액</span> : 
												<span class="booking-text"><a href="#">${spaceAll.space_sum}</a></span>
											</div>
										</div>
	 								</div>
	 								<div class="listsearch-input-item pull-right " style="width:125px;">
	 									<button class="btn color-bg flat-btn pull-right" id="deleteArticle" onClick="return deleteArticle(${spaceAll.space_no});">삭제</button>
	 								</div>
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

