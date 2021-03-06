<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<style>
.centerBold {font-weight: bold;text-align:center;}
.center{text-align:center;}
</style>
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
                                        <li><a href="inquireListHost.do" class="user-profile-act"><i class="fa fa-comments-o"></i>1:1문의 관리</a></li>
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
									<h4 style="display:inline; float:left">1:1문의 관리</h4>
									<button class="btn color-bg flat-btn" onclick='history.back(-1); return false;' style="float:right">
										목록으로<i class="fa fa-angle-left"></i>
									</button>
								</div>
							</div>
							<div>
							  <table class="table table-bordred table-striped">
							    <tbody>
							      <tr>
							        <th class="centerBold">제목</th>
							        <td colspan="3">${inquireList.inq_title }</td>
							      </tr>
							      <tr>
							        <th class="centerBold">문의 남긴 공간명</th>
							        <td>${inquireList.spaceDTO.space_name }</td>
							      </tr>
							      <tr>
							        <th class="centerBold">작성일</th>
							        <td>${inquireList.inq_writeDate }</td>
							      </tr>
							      <tr>
							        <th class="centerBold">내용</th>
							        <td colspan="3">${inquireList.inq_note }</td>
							      </tr>
							    </tbody>
							  </table>
							</div>
							<form action="submitInquire.do" method="post" id="inquireForm"> 
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<input type="hidden" name="mem_no" value="${login.mem_No}">
								<input type="hidden" name="inq_no" value="${inquireList.inq_no}">
								<input type="hidden" name="pageNum" value="${pageNum}">
								<div id="inquireDiv" style="display:none;" class="custom-form list-single-main-item fl-wrap">
									<div class="col-md-12">
										<label>제목</label> <input type="text" name="inq_title" id="inq_title"/>
										<label>내용</label> <textarea cols="40" rows="3" name="inq_note" id="inq_note"></textarea>
									</div>
									<div class="col-md-12">
									    <button type="button" class="btn color-bg flat-btn pull-right" onclick="return sendInquire(1);" class="cancelButton" style="margin-left:15px;">
											취소<i class="fa fa-angle-up"></i>
										</button>
									    <button class="btn color-bg flat-btn pull-right" onClick="submitInquire();">
											답변 등록<i class="fa fa-angle-right"></i>
										</button>
									</div>
								</div>
							</form>
								<c:if test="${inquireList.inq_step == 0 }">
									<div align="right" id="sendInquire">
										<button type="button" class="btn color-bg flat-btn" style="background-color:#F29661;" onclick="return sendInquire(0);">
											답변하기<i class="fa fa-angle-down"></i>
										</button>
									</div>
								</c:if>
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
