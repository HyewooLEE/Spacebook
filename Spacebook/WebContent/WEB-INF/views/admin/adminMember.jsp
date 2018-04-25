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
                                        <li><a href="mySpaceList.do" class="user-profile-act"><i class="fa fa-th-list"></i>나의 공간 <span>${countMySpace }</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>예약현황 <span>2</span></a></li>
                                        <li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
                                        <li><a href="dashboard-add-listing.html"><i class="fa fa-plus-square-o"></i>공간 정산정보</a></li>
                                    </ul>
                                </div>
							<c:if test="${login.mem_Auth eq 'ROLE_ADMIN' }">
							<div class="user-profile-menu">
								<h3>관리자 메뉴</h3>
								<ul>
									<li><a href="adminMember.do" class="user-profile-act"><i class="fa fa-th-list"></i>회원 관리 </a></li>
									<li><a href="adminArticle.do"><i class="fa fa-th-list"></i>게시글 관리 </a></li>
								</ul>
							</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="dashboard-list-box fl-wrap">
						<div class="dashboard-header fl-wrap">
							<form class="fl-wrap" method="POST" action="adminMember.do" id="form1">
							<input type="hidden" name="pageNumber" value="${page.pageNumber }"/>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<!-- <h3 style="display:inline; float:left;">회원 관리</h3> -->
							<div class="box-widget-item fl-wrap pull-right" style="display: inline; width:300px; margin-bottom: 0px">
		                        <div class="box-widget search-widget pull-right">
		                                <input name="search" id="search" type="text" class="search" placeholder="검색하시오" value="">
		                                <button class="search-submit" id="submit_btn"><i class="fa fa-search transition"></i> </button>
		                        </div>
		                    </div>
							<div class="listsearch-input-item pull-left" style="width:110px;">
	                            <select data-placeholder="Location" class="chosen-select" id="type1" name="type1">
	                                <option value="">권한</option>
	                                <option value="Z">전체</option>
	                                <option value="ROLE_GUEST">게스트</option>
	                                <option value="ROLE_USER">멤버</option>
	                                <option value="ROLE_ADMIN">관리자</option>
	                                <option value="N">정지계정</option>
	                            </select>
	                         </div>
							<div class="listsearch-input-item pull-left" style="width:140px;">
	                            <select data-placeholder="Location" class="chosen-select"  id="type2" name="type2">
	                                <option value="">유형</option>
	                                <option value="Y">전체</option>
	                                <option value="E">일반계정</option>
	                                <option value="K">카카오계정</option>
	                            </select>
	                         </div>
		                    </form>
						</div>
						<c:if test="${page.articleCount == 0}">
						<div class="dashboard-list " style="width:100%">
							<div class="dashboard-message"  align="center">
										<h2>해당 결과물이 없습니다.</h2>
							</div>
						</div>
						</c:if>
						<c:if test="${page.articleCount > 0}">
						<c:forEach var="members" items="${members }">
						<!-- dashboard-list end-->
						<div class="dashboard-list " style="width:100%">
							<div class="dashboard-message" >
								<div class="dashboard-message-avatar">
									<img src="${members.mem_Img}" alt="" style="object-fit: cover; width:50px; height: 50px;">
								</div>
								<div class="dashboard-message-text " style=" padding-top:15px;">
									<div class="listsearch-input-item pull-right" style="width:125px;">
			                            <select data-placeholder="Location" class="customFilter chosen-select" id="${members.mem_Id }" >
			                                <c:if test="${members.mem_Auth eq 'ROLE_USER'  && members.mem_Enabled eq '1'}">
			                                <option value="ROLE_GUEST">게스트</option>
			                                <option value="ROLE_USER" selected="selected">멤버</option>
			                                <option value="ROLE_ADMIN">관리자</option>
			                                <option value="NONENABLED">정지계정</option>
			                               </c:if>
			                                <c:if test="${members.mem_Auth eq 'ROLE_GUEST' && members.mem_Enabled eq '1'}">
			                                <option value="ROLE_GUEST" selected="selected">게스트</option>
			                                <option value="ROLE_USER">멤버</option>
			                                <option value="ROLE_ADMIN">관리자</option>
			                                <option value="NONENABLED">정지계정</option>
			                               </c:if>
			                                <c:if test="${members.mem_Auth eq 'ROLE_ADMIN' && members.mem_Enabled eq '1'}">
			                                <option value="ROLE_GUEST">게스트</option>
			                                <option value="ROLE_USER">멤버</option>
			                                <option value="ROLE_ADMIN" selected="selected">관리자</option>
			                                <option value="NONENABLED">정지계정</option>
			                               </c:if>
			                                <c:if test="${members.mem_Enabled ne '1'}">
			                                <option value="ROLE_GUEST">게스트</option>
			                                <option value="ROLE_USER">멤버</option>
			                                <option value="ROLE_ADMIN">관리자</option>
			                                <option value="NONENABLED" selected="selected">정지계정</option>
			                               </c:if>
			                            </select>
		                         </div>
									<a style="cursor:pointer; color:#000; font-size: 16px; font-weight: 600;" class="toggle"  href="#">
										${members.mem_Id }
										<c:if test="${members.mem_Name eq null}">
										(게스트 님) - 
										</c:if>
										<c:if test="${members.mem_Name ne null }">
										(${members.mem_Name} 님) - 
										</c:if>
										<c:set var="str1" value="${members.mem_Id }"/>
										<c:set var="str2" value="@"/>
			                            <c:if test="${fn:contains(str1, str2)}">
										<span style="color:#4DB7FE; font-size:12px;">이메일 계정</span>
			                            </c:if>
			                            <c:if test="${!fn:contains(str1, str2)}">
			                            <span style="color:#4DB7FE; font-size:12px;">카카오 계정</span>
			                            </c:if>
									</a>
									<c:if test="${members.mem_Auth eq 'ROLE_USER' || members.mem_Auth eq 'ROLE_ADMIN' }">
									<div class="accordion-inner">
									<div class="booking-details fl-wrap">
										<span class="booking-title">전화번호</span> : 
										<span class="booking-text"><a href="#">${members.mem_Phone }</a></span>
									</div>
									<div class="booking-details fl-wrap">
										<span class="booking-title">주소</span> : 
										<span class="booking-text"><a href="#">${members.mem_Addr2 }${members.mem_Addr3 }</a></span>
									</div>
									<div class="booking-details fl-wrap">
										<span class="booking-title">선호 장소</span> : 
										<span class="booking-text">
											<a href="#">
											<c:forTokens var="favor" items="${members.mem_Favor}" delims=",">
											${favor }
											</c:forTokens>
											</a>
										</span>
									</div> 
									</div>
									</c:if>
 								</div>
							</div>
						</div>
						<!-- dashboard-list end-->
						</c:forEach>
						</c:if>
					</div>
					<!-- pagination-->
					<c:if test="${page.articleCount > 0}">
					<div class="pagination">
						<c:if test="${page.pageNumber > 10}">
						<a href="adminMember.do?pageNumber=${page.startPage-10 }&type1=${type1}&type2=${type2}&search=${search}" class="prevposts-link">&lt;</a> 
						</c:if>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<c:if test="${page.pageNumber == i }">
							<a href="adminMember.do?pageNumber=${i}&type1=${type1}&type2=${type2}&search=${search}" class="current-page">${i}</a>
							</c:if>
							<c:if test="${page.pageNumber != i }">
							<a href="adminMember.do?pageNumber=${i}&type1=${type1}&type2=${type2}&search=${search}">${i}</a>
							</c:if>
						</c:forEach>
						<c:if test="${page.endPage < page.pageCount}">
						<a href="adminMember.do?pageNumber=${page.startPage+10 }&type1=${type1}&type2=${type2}&search=${search}" class="nextposts-link">&gt;</a>
						</c:if>
					</div>
					</c:if>
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

