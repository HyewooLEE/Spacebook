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
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 예약리스트 </a></li>
                                        <li><a href="dashboard-bookings.html"><i class="fa fa-heart"></i>나의 찜공간 </a></li>
                                        <li><a href="inquireList.do" class="user-profile-act"><i class="fa fa-comments-o"></i>나의 1:1문의 </a></li>
                                    </ul>
                                </div>
                                <!-- user-profile-menu end-->  
                 			<!-- 호스트 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 관리 (호스트)</h3>
                                    <ul>
                                        <li><a href="mySpaceList.do"><i class="fa fa-th-list"></i>나의 공간 </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>예약현황 </a></li>
                                        <li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
                                        <li><a href="dashboard-add-listing.html"><i class="fa fa-plus-square-o"></i>공간 정산정보</a></li>
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
									<h4>나의 1:1문의</h4>
								</div>
							</div>
							<div >
							  <table class="table table-bordred table-striped table-hover">
							    <thead>
							      <tr > 
							        <th style="text-align:center">공간명</th>
							        <th style="text-align:center">제목</th>
							        <th style="text-align:center">작성일</th>
							        <th style="text-align:center">삭제</th>
							      </tr>
							    </thead>
							    <tbody id="inquireTbody">
								    <c:if test="${countInquire==0 }">
								    	<tr>
									        <td colspan="5" align="center"><h5>해당 결과물이 없습니다.</h5></td>
									    </tr>
								    </c:if>
								    <%-- 호스트 : ${inquireList.spaceDTO.mem_no}  
									    회원 : ${inquireList.memberVO.mem_No} 
									    작성자 : ${inquireList.mem_no}  --%>
								    <c:forEach var="inquireList" items="${inquireList }" varStatus="status">
									    <c:set var="countVal" property="countVal" value="1"/>
										      <tr style ="cursor:pointer;" onClick =" location.href='inquireContent.do?inq_no=${inquireList.inq_no }&pageNum=${pageNum }' ">
										        <td width="30%" style="text-align:center;">${inquireList.spaceDTO.space_name}</td>
										        <c:if test="${inquireList.inq_step == 0 }">
										        	<td width="30%"><a href="inquireContent.do?inq_no=${inquireList.inq_no }&pageNum=${pageNum }">${inquireList.inq_title }</a></td>
										        </c:if>
										        <c:if test="${inquireList.inq_step != 0 }">
										        	<td width="30%"><a href="inquireContent.do?inq_no=${inquireList.inq_no }&pageNum=${pageNum }">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:red;">ㄴ[답변]</font>${inquireList.inq_title }</a></td>
										        </c:if>
										        <td width="20%" style="text-align:center;">${inquireList.inq_writeDate }</td>
										      	<td width="20%" onclick="event.cancelBubble = true;" style="text-align:center;"><button class="btn btn-danger btn-xs" onClick="return deleteInquire(${inquireList.inq_no });"><span class="glyphicon glyphicon-trash"></span></button></td>
										      </tr>
									    
									    <c:if test="${status.last}" >
									    	<c:if test="${countVal != 1}">
											    <tr>
											        <td colspan="5" align="center"><h5>해당 결과물이 없습니다.</h5></td>
											    </tr>
										    </c:if>
									    </c:if>
								    </c:forEach>
							    </tbody>
							  </table>
							  <c:if test="${page.articleCount > 0}">
								<div class="pagination">
									<c:if test="${page.pageNumber > 10}">
									<a href="inquireContent.do?pageNumber=${page.startPage-10 }" class="prevposts-link">&lt;</a> 
									</c:if>
									<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
										<c:if test="${page.pageNumber == i }">
										<a href="inquireContent.do?pageNumber=${i}" class="current-page">${i}</a>
										</c:if>
										<c:if test="${page.pageNumber != i }">
										<a href="inquireContent.do?pageNumber=${i}">${i}</a>
										</c:if>
									</c:forEach>
									<c:if test="${page.endPage < page.pageCount}">
									<a href="inquireContent.do?pageNumber=${page.startPage+10 }" class="nextposts-link">&gt;</a>
									</c:if>
								</div>
							</c:if>
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
<jsp:include page="inquireModal.jsp" flush="false" />  
<div class="limit-box fl-wrap"></div>
