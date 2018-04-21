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
				<h2>나의 1:1문의</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>1:1문의</span>
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
									<li><a href="profile.do"><i class="fa fa-user-o"></i>프로필 수정</a></li>
									<li><a href="password.do"><i class="fa fa-unlock-alt"></i>비밀번호 변경</a></li>
								</ul>
							</div>
							<!-- 일반 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 (일반)</h3>
                                    <ul>
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 예약리스트 <span>1</span> </a></li>
                                        <li><a href="dashboard-bookings.html"><i class="fa fa-heart"></i>나의 찜공간 <span>2</span></a></li>
                                        <li><a href="inquireList.do" class="user-profile-act"><i class="fa fa-comments-o"></i>나의 1:1문의 </a></li>
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
							<!-- user-profile-menu end-->
							<c:if test="${login.mem_Id eq 'admin@admin.com' }">
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
					<div class="row">
						<div class="col-md-12">
							<!-- profile-edit-container-->
							<div class="profile-edit-container">
								<div class="profile-edit-header fl-wrap" style="padding-bottom: 0px;">
									<h4>나의 1:1문의</h4>
								</div>
							</div>
							<div >
							  <!-- list-main-wrap-->
				           		<div class="list-main-wrap fl-wrap card-listing">
				                <a class="custom-scroll-link back-to-filters btf-r" href="#lisfw"><i class="fa fa-angle-double-up"></i><span>Back to Filters</span></a> 
				                <div class="container" class="col-md-3">
				                    <!-- listing-item -->
				                    <c:forEach var="spaceAll" items="${spaceAll}" varStatus="status">
				                    <div class="listing-item">
				                        <article class="geodir-category-listing fl-wrap">
					                            <div class="geodir-category-img">
					                                <a href="spaceView.do?space_no=${spaceAll.space_no }"><img src="${spaceAll.space_img1 }" style="width:350px;height:210px;"></a>
					                                <div class="overlay"></div>
					                                <div class="list-post-counter"><span>${spaceAll.spaceReviewDTO.rev_rate }</span><i class="fa fa-heart"></i></div>
					                            </div>
				                            <div class="geodir-category-content fl-wrap" style="width:370px;height:230px;">
				                                <a class="listing-geodir-category" href="listing.html">${spaceAll.space_category }</a>
				                                <div class="listing-avatar"><a href="author-single.html"><img src="${login.mem_Img }" alt=""></a>
				                                    <span class="avatar-tooltip">Added By  <strong> ${login.mem_Name }</strong></span>
				                                </div>
				                                <h3><a href="spaceView.do?space_no=${spaceAll.space_no }">${spaceAll.space_name }</a></h3>
				                                <p>${spaceAll.space_intro1 }</p>
				                                <div class="geodir-category-options fl-wrap">
				                                    <div class="listing-rating card-popup-rainingvis" data-starrating2="5">
				                                        <span>(7 reviews)</span>
				                                    </div>
				                                    <div class="geodir-category-location" align="left"><i class="fa fa-map-marker" aria-hidden="true"></i>${spaceAll.space_addr1} <br>${spaceAll.space_addr2}</div>
				                                </div>
				                            </div>
				                        </article>
				                    </div>
				                    </c:forEach>
				                    <!-- listing-item end-->                           
				                    <div class="clearfix"></div>
				                </div>
				                <a class="load-more-button" href="#">Load more <i class="fa fa-circle-o-notch"></i> </a>  
					        </div>
					        <!-- list-main-wrap end-->
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
