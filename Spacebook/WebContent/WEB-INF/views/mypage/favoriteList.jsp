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
				<h2>나의 찜공간</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>나의 찜공간</span>
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
	                                        <li><a href="favoriteList.do" class="user-profile-act"><i class="fa fa-heart"></i>나의 찜공간</a></li>
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
								<div class="profile-edit-header fl-wrap" style="padding-bottom: 0px;">
									<h4>나의 찜공간</h4>
								</div>
							</div>
						 	<!-- list-main-wrap-->
				            <c:if test="${countMyFavorite > 0}">
				            <div class="list-main-wrap fl-wrap card-listing">
				                <div class="container" style="width:100%">
				                    <!-- listing-item -->
				                    <c:forEach var="favoriteList" items="${favoriteList}">
				                    <div class="listing-item">
				                        <article class="geodir-category-listing fl-wrap">
					                            <div class="geodir-category-img">
					                                <a href="spaceView.do?space_no=${favoriteList.space_no}"><img src="${favoriteList.spaceDTO.space_img1}" width="100%" style="height: 250px;" ></a>
					                                <div class="overlay"></div>
					                                <%-- <div class="list-post-counter"><span>${spaceAll.spaceReviewDTO.rev_rate }</span><i class="fa fa-heart"></i></div> --%>
					                            </div>
				                            <div class="geodir-category-content fl-wrap" >
				                                <a class="listing-geodir-category" href="spaceView.do?space_no=${favoriteList.space_no}">${favoriteList.spaceDTO.space_category}</a>
				                                <div class="listing-avatar"><a href="author-single.html"><img src="${favoriteList.memberVO.mem_Img}" alt=""></a>
				                                    <span class="avatar-tooltip">Added By  <strong> ${favoriteList.memberVO.mem_Name }</strong></span>
				                                </div>
				                                <h3><a href="spaceView.do?space_no=${favoriteList.space_no}">${favoriteList.spaceDTO.space_name}</a></h3>
				                                <p>${favoriteList.spaceDTO.space_intro1 }</p>
				                                <div class="geodir-category-options fl-wrap">
				                                    <div class="opening-hours-day" style="text-align: left;"><i class="fa fa-clock-o"></i>&nbsp;&nbsp;평일 ${favoriteList.spaceDTO.space_open} - ${favoriteList.spaceDTO.space_close}</div>
				                                    <div class="listing-rating card-popup-rainingvis" data-starrating2="${favoriteList.review_avg}">
				                                        <span>(${favoriteList.review_count} 리뷰)</span>
				                                    </div>
				                                    <div class="geodir-category-location" align="left"><i class="fa fa-map-marker" aria-hidden="true"></i>${favoriteList.spaceDTO.space_addr1}&nbsp;&nbsp;&nbsp;${favoriteList.spaceDTO.space_addr2}</div>
				                                </div>
				                            </div>
				                        </article>
				                    </div>
				                    </c:forEach>
				                    <!-- listing-item end-->                           
				                    <div class="clearfix"></div>
				                </div>
				                <!-- Pagination -->
								<div class="pagination">
									<c:if test='${paging.previous != ""}'>
                                    	<a href="/Spacebook/favoriteList.do?pageNum=${paging.previous}" class="prevposts-link">&lt;</a>
                                    </c:if>
                                    <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
                                   		<a href="/Spacebook/favoriteList.do?pageNum=${i}" class="current-page">${i}</a>
                                    </c:forEach>
                                    <c:if test='${paging.nextPage != ""}'>
                                    	<a href="/Spacebook/favoriteList.do?pageNum=${paging.nextPage}" class="nextposts-link">&gt;</a>
                                    </c:if>
                                </div>
								<!-- END Pagination -->
				            </div>
				            </c:if>
				            <!-- list-main-wrap end-->
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
