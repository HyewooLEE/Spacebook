<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<div class="loader-wrap">
            <div class="pin"></div>
            <div class="pulse"></div>
        </div>
        <!--loader end-->
        <!-- Main  -->
            <!-- header-->
            <header class="main-header dark-header fs-header sticky">
                <div class="header-inner">
                    <div class="logo-holder">
                        <a href="main.do"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png" alt=""></a>
                    </div>
                    <div class="header-search vis-header-search">
                    	<form action="search.do" method="post">
                    	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="header-search-input-item">
                            <input type="text" placeholder="검색키워드" value="" id="search" name="search"/>
                        </div>
                        <div class="header-search-select-item">
                        	<select  id="space_category" name="space_category" class="chosen-select">
                            	<option value="">공간유형</option>
                           		<option value="작업실">작업실</option>
                           		<option value="연습실">연습실</option>
                           		<option value="세미나실">세미나실</option>
                           		<option value="스터디룸">스터디룸</option>
                           		<option value="파티룸">파티룸</option>
                           		<option value="공연장">공연장</option>
                           		<option value="다목적홀">다목적홀</option>
                           		<option value="엠티장소">엠티장소</option>
                           		<option value="워크숍장소">워크숍장소</option>
                           		<option value="레저시설">레저시설</option>
                           		<option value="카페">카페</option>
                           		<option value="">기타</option>
                           	</select>
                        </div>
                        <button class="header-search-button" type="submit">검색하기</button>
                        </form>
                    </div>
                    <div class="show-search-button"><i class="fa fa-search"></i> <span>검색하기</span></div>
                    <a href="submitSpaceForm.do" class="add-list">공간 등록<span><i class="fa fa-plus"></i></span></a>
                    <c:if test="${ login.mem_Id eq null }">
                    <div class="show-reg-form modal-open" id="loginButton"><i class="fa fa-sign-in"></i>로그인하기</div>
                    </c:if>
                    <c:if test="${login.mem_Id ne null}">
                    <div class="header-user-menu">
                        <div class="header-user-name">
                            <span><img src="${login.mem_Img}" alt="" width="60px" height="60px" style="object-fit: cover;"></span>
                            <c:if test="${login.mem_Name ne null }">
                             ${login.mem_Name }님
                            </c:if>
                            <c:if test="${login.mem_Name eq null }">
                            	게스트님  
                           	</c:if>
                        </div>
                        <ul>
                            <li><a href="profile.do">나의 프로필</a></li>
                            <li><a href="password.do">비밀번호 변경</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="myRentList.do">예약리스트</a></li>
                            <li><a href="favoriteList.do">나의 찜공간</a></li>
                            <li><a href="inquireList.do">나의 1:1문의</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="mySpaceList.do">나의 공간관리</a></li>
                            <li><a href="rentList.do">공간 예약현황</a></li>
                            <li><a href="inquireListHost.do">1:1문의관리</a></li>
                            <li><a href="#"></a></li>
                            <c:if test="${login.mem_Auth eq 'ROLE_ADMIN' }">
                            <li><a href="adminMember.do">회원 관리</a></li>
                            <li><a href="adminArticle.do">게시글 관리</a></li>
                            <li><a href="#"></a></li>
                            </c:if>
                            <c:set var="str1" value="${login.mem_Id }"/>
							<c:set var="str2" value="@"/>
							<c:if test="${fn:contains(str1, str2)}">
                           		<li><a href="#" onclick="logout();"> 로그아웃</a></li>
                            </c:if>
                            <c:if test="${!fn:contains(str1, str2)}">
                            	<li><a href="kakaologout.do"> 로그아웃 </a></li>
                            </c:if> 
                        </ul>
                    </div>
                    <form action="logout.do" method="POST" style="display: none;" id="logoutForm">
                    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="submit" value="Logout"  id="logout"/>
					</form>
                    
                    </c:if>
                    <!-- nav-button-wrap--> 
                    <div class="nav-button-wrap color-bg">
                        <div class="nav-button">
                            <span></span><span></span><span></span>
                        </div>
                    </div>
                    <!-- nav-button-wrap end-->
                    <!--  navigation --> 
                    <div class="nav-holder main-menu">
                        <nav>
                            <ul>
                            	<li><a href="main.do">홈</a> </li>
                                <li><a href="company.do">회사소개</a></li>
                                <li><a href="howitwork.do">이용안내</a></li>
                            	<li><a href="notice.do">공지사항</a></li>
                            	<li><a href="listSpace.do">공간 리스트</a></li>
                                    <!--second level end-->                                
                            </ul>
                        </nav>
                    </div>
                    <!-- navigation  end -->
                </div>
            </header>
