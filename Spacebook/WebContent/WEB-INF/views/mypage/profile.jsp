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
				<h2>프로필 수정</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>프로필 수정</span>
				</div>
			</div>
			<div class="row" style="height: 100%">
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
									<li><a href="profile.do" class="user-profile-act"><i class="fa fa-user-o"></i>나의 프로필</a></li>
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
	                                        <li><a href="favoriteList.do" ><i class="fa fa-heart"></i>나의 찜공간</a></li>
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
				<form  action="changeProfile.do?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data" id="profile_Form">
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-12">
							<!-- profile-edit-container-->
							<div class="profile-edit-container">
								<div class="profile-edit-header fl-wrap"
									style="padding-bottom: 0px;">
									<h4>프로필 정보</h4>
								</div>
								<div class="custom-form">
									<div class="row">
										<div class="col-md-3">
											<label>이름<i class="fa fa-user-o"></i></label> 
											<input type="text" value="${login.mem_Name }" name="mem_Name" id="name"/>
										</div>
										<div class="col-md-9" style="padding: 0px;">
											<div class="col-md-6">
												<label>핸드폰<i class="fa fa-phone"></i>
												</label> <input type="text" value="${login.mem_Phone }"  name="mem_Phone" id="phone"/>
											</div>
											<div class="col-md-6">
												<c:set var="str1" value="${login.mem_Id }" />
												<c:set var="str2" value="@" />
												<c:if test="${fn:contains(str1, str2)}">
													<label>이메일<i class="fa fa-envelope-o"></i></label>
													<input type="email" value="${login.mem_Id }" readonly  name="mem_Id"/>
												</c:if>
												<c:if test="${!fn:contains(str1, str2)}">
													<label>이메일<i class="fa fa-envelope-o"></i></label>
													<input type="email" value="${login.mem_KakaoEmail }" readonly />
													<input type="hidden" value="${login.mem_Id }" readonly name="mem_Id" />
												</c:if>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<div class="edit-profile-photo fl-wrap">
											<img src="${login.mem_Img}" alt="" class="respimg" id="profileImg" style="object-fit: cover; border-radius: 50%; width: 200px; height: 200px;">
											<div class="change-photo-btn" style="width: 100%">
												<div class="photoUpload" style="width: 100%; margin-bottom: 25px;">
													<span><i class="fa fa-upload"></i> 프로필 사진 변경</span> <input type="file" class="upload" id="file" name="file">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-9">
										<div class="custom-form">
											<div class="row">
												<div class="col-md-6">
													<label> 우편번호 <i class="fa fa-map-marker"></i></label>
													<input type="text" value="${login.mem_Addr1 }" readonly  name="mem_Addr1" id="sample3_postcode" onClick="kume1()"/>
												</div>
												<div class="col-md-6">
													<label> 주소 <i class="fa fa-map-marker"></i></label>
													<input type="text" value="${login.mem_Addr2 }" readonly  name="mem_Addr2" id="sample3_address" onClick="kume1()"/>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label> 상세주소 <i class="fa fa-map-marker"></i></label> 
													<input type="text" value="${login.mem_Addr3 }"  name="mem_Addr3" id="detail_address"/>
												</div>
											</div>
											<div class="row">
												<label style="padding-left: 15px;"> 선호 항목</label>
												<div class=" fl-wrap filter-tags" style="margin-top: 15px;">
													<div class="col-md-3">
														<input id="작업실" type="checkbox" name="mem_Favor" value="작업실"> 
														<label for="작업실">작업실</label>
													</div>
													<div class="col-md-3">
														<input id="연습실" type="checkbox" name="mem_Favor" value="연습실"> 
														<label for="연습실">연습실</label>
													</div>
													<div class="col-md-3">
														<input id="세미나실" type="checkbox" name="mem_Favor" value="세미나실"> 
														<label for="세미나실">세미나실</label>
													</div>
													<div class="col-md-3">
														<input id="스터디룸" type="checkbox" name="mem_Favor" value="스터디룸"> 
														<label for="스터디룸">스터디룸</label>
													</div>
													<div class="col-md-3">
														<input id="파티룸" type="checkbox" name="mem_Favor" value="파티룸"> 
														<label for="파티룸">파티룸</label>
													</div>
													<div class="col-md-3">
														<input id="공연장" type="checkbox" name="mem_Favor" value="공연장"> 
														<label for="공연장">공연장</label>
													</div>
													<div class="col-md-3">
														<input id="다목적홀" type="checkbox" name="mem_Favor" value="다목적홀"> 
														<label for="다목적홀">다목적홀</label>
													</div>
													<div class="col-md-3">
														<input id="엠티장소" type="checkbox" name="mem_Favor" value="엠티장소"> 
														<label for="엠티장소">엠티장소</label>
													</div>
													<div class="col-md-3">
														<input id="워크숍장소" type="checkbox" name="mem_Favor" value="워크숍장소"> 
														<label for="워크숍장소">워크숍장소</label>
													</div>
													<div class="col-md-3">
														<input id="레저시설" type="checkbox" name="mem_Favor" value="레저시설"> 
														<label for="레저시설">레저시설</label>
													</div>
													<div class="col-md-3">
														<input id="카페" type="checkbox" name="mem_Favor" value="카페"> 
														<label for="카페">카페</label>
													</div>
													<div class="col-md-3">
														<input id="기타" type="checkbox" name="mem_Favor" value="기타"> 
														<label for="기타">기타</label>
													</div>
												</div>
												<button class="btn big-btn color-bg flat-btn pull-right"  onClick="return Check4();">변경하기</button>	
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<!--profile-edit-wrap end -->
	</div>
	<!--container end -->
</section>
<!-- section end -->
<div class="limit-box fl-wrap"></div>
