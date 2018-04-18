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
				<h2>1:1문의 관리</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>1:1문의 관리</span>
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
                                        <li><a href="inquireList.do" ><i class="fa fa-comments-o"></i>나의 1:1문의 </a></li>
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
                                        <li><a href="inquireListHost.do" class="user-profile-act"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
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
									<h4>1:1문의 관리</h4>
								</div>
							</div>
							<div >
							  <table class="table table-hover">
							    <thead>
							      <tr > 
							        <th style="text-align:center">나의 공간명</th>
							        <th style="text-align:center">작성자</th>
							        <th style="text-align:center">제목</th>
							        <th style="text-align:center">작성일</th>
							      </tr>
							    </thead>
							    <tbody>
							    <c:forEach var="inquireList" items="${inquireList }">
								    <c:if test="${inquireList.spaceDTO.mem_no == login.mem_No}">
								      <tr style = "text-align:center;cursor:pointer;" onClick = " location.href='inquireContentHost.do?inq_no=${inquireList.inq_no }&pageNum=${pageNum }' ">
								        <td width="20%" >${inquireList.spaceDTO.space_name}</td>
								        <td width="20%" >${inquireList.memberVO.mem_Name}</td>
								        <td width="40%"><a href="inquireContentHost.do?inq_no=${inquireList.inq_no }&pageNum=${pageNum }">${inquireList.inq_title }</a></td>
								        <td width="20%">${inquireList.inq_writeDate }</td>
								      </tr>
								    </c:if>
							    </c:forEach>
							    </tbody>
							  </table>
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
