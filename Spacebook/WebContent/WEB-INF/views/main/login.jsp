<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<section class="parallax-section small-par color-bg">
	<div class="shapes-bg-big"></div>
	<div class="container">
		<div class="section-title center-align">
			<h2 style="padding-top: 15px;">
				<span>SPACE BOOK</span>
			</h2>
		</div>
	</div>
	<div class="header-sec-link">
		<div class="container">
			<a href="#sec2" class="custom-scroll-link">로그인하기</a>
		</div>
	</div>
</section>
<!-- section end -->
<section id="sec2">
	<div class="container">
		<div class="section-title">
			<h2>로그인</h2>
			<div class="section-subtitle">말 좀 들어라 제발</div>
			<span class="section-separator"></span>
			<p>로그인을 하셔야 해당 서비스를 이용하실 수 있습니다.</p>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="profile-edit-container add-list-container" style="margin-bottom: 40px;">
					<div class="custom-form" style="border-bottom: none;">
					<form action="login.do" method="POST" id="loginPageForm">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<label><b>이메일</b><i class="fa fa-user"></i></label> <input type="email" name="email" placeholder="이메일을 입력해주세요" value="" /> 
						<label><b>비밀번호</b><i	class="fa fa-phone"></i></label> <input type="password"  name="passwd" placeholder="비밀번호를 입력해주세요" value="" style="margin-bottom: 50px;" />
					<div class="custom-form">
					<div class="filter-tags">	
					    <input id="remember" type="checkbox" name="remember-me"> <label for="remember_me">자동 로그인</label>
					 </div>
					 </div>
					</form>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		</div>
	</div>
	<a href="main.do" class="btn  big-btn circle-btn dec-btn  color-bg flat-btn" style="margin-right: 25px;">건너뛰기</a> 
	<a href="#" class="btn  big-btn circle-btn dec-btn  color-bg flat-btn" onClick="document.getElementById('loginPageForm').submit()">다음 단계</a>

</section>
<c:if test="${securityexceptionmsg ne null }">
집중하자

</c:if>