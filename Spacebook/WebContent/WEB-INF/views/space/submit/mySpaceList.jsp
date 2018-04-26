<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<section>
	<!-- container -->
	<div class="container">
		<!-- profile-edit-wrap -->
		<div class="profile-edit-wrap">
			<div class="profile-edit-page-header">
				<h2>나의 공간관리</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>나의 공간관리</span>
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
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 예약리스트 </a></li>
                                        <li><a href="dashboard-bookings.html"><i class="fa fa-heart"></i>나의 찜공간 </a></li>
                                        <li><a href="inquireList.do" ><i class="fa fa-comments-o"></i>나의 1:1문의 </a></li>
                                    </ul>
                                </div>
                                <!-- user-profile-menu end-->  
                 			<!-- 호스트 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 관리 (호스트)</h3>
                                    <ul>
                                        <li><a href="mySpaceList.do" class="user-profile-act"><i class="fa fa-th-list"></i>나의 공간 <span>${countMySpace }</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>예약현황 </a></li>
                                        <li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
                                    </ul>
                                </div>
							<!-- user-profile-menu end-->
							<c:if test="${login.mem_Auth eq 'ROLE_ADMIN' }">
							<div class="user-profile-menu">
								<h3>관리자 메뉴</h3>
								<ul>
									<li><a href="adminMember.do"><i class="fa fa-th-list"></i>회원 관리 </a></li>
									<li><a href="adminArticle.do"><i class="fa fa-th-list"></i>게시글 관리 </a></li>
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
									<h4>나의 공간관리</h4>
								</div>
							</div>
							<div >
							  <table class="table table-bordred table-striped table-hover">
							    <thead>
							      <tr > 
							        <th style="text-align:center" colspan="2">나의 공간명</th>
							        <th style="text-align:center">공간유형</th>
							        <th style="text-align:center">주소</th>
							        <th style="text-align:center">금액</th>
							        <th style="text-align:center" colspan="2">관리</th>
							      </tr>
							    </thead>
							    <tbody id="spaceTbody">
							    <c:forEach var="mySpace" items="${mySpace }">
							       <tr style = "cursor:pointer;" onClick = " location.href='spaceView.do?space_no=${mySpace.space_no }' ">
							          <%-- <td width="30%">
							       	  	<div class="dashboard-message-avatar" align="center">
											<img src="${mySpace.space_img1}" style="object-fit: cover; width:50px; height: 50px;">
									  	</div>
									  </td> --%>
									  <td width="10%" style="text-align:center;">
									  	<div class="dashboard-message-avatar" align="center">
									  		<img src="${mySpace.space_img1}" style="object-fit: cover; width:50px; height: 50px;">
									  	</div>
									  </td>
							          <td width="30%" style="text-align:center;">${mySpace.space_name}</td>
							          <td width="10%" style="text-align:center;">${mySpace.space_category}</td>
							          <td width="30%" >${mySpace.space_addr1} ...</td>
							          <td width="10%" style="text-align:right;"><fmt:formatNumber value="${mySpace.space_sum}" type="number"/>원</td>
							          <td width="5%" onclick="event.cancelBubble = true;" style="text-align:center;"><button class="btn btn-primary btn-xs" onClick="return updateSpace(${mySpace.space_no });" ><span class="glyphicon glyphicon-pencil"></span></button></td>
							          <td width="5%" style="text-align:center;" onclick="event.cancelBubble = true;"><button class="btn btn-danger btn-xs" onClick="return deleteSpace(${mySpace.space_no });"><span class="glyphicon glyphicon-trash"></span></button></td>
							       </tr>
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
<%-- <jsp:include page="updateModal.jsp" flush="false" /> --%>
<div class="limit-box fl-wrap"></div>