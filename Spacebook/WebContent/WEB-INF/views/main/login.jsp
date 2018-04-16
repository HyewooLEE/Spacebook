<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<section class="parallax-section small-par color-bg">
	<div class="shapes-bg-big"></div>
	<div class="container">
		<div class="section-title center-align">
			<h2 style="padding-top: 15px;">
				<span>SPACE BOOK을 좀 더 확실히 즐겨 보세요 !</span>
			</h2>
		</div>
	</div>
	<div class="header-sec-link">
		<div class="container">
			<a href="#sec2" class="custom-scroll-link">정보 등록하기</a>
		</div>
	</div>
</section>
<!-- section end -->
<section id="sec2">
	<div class="container">
		<div class="section-title">
			<h2>아직 정보를 등록 하지 않으셨군요!</h2>
			<div class="section-subtitle">말 좀 들어라 제발</div>
			<span class="section-separator"></span>
			<p>정보를 등록하시면 결제,공간등록 등 부가적인 서비스를 이용하실 수 있습니다.</p>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="profile-edit-container add-list-container" style="margin-bottom: 40px;">
					<div class="custom-form" style="border-bottom: none;">
					<form action="login.do" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<label><b>이메일</b><i class="fa fa-user"></i></label> <input type="email" name="email" placeholder="이메일을 입력해주세요" value="" /> 
						<label><b>비밀번호</b><i	class="fa fa-phone"></i></label> <input type="password"  name="passwd" placeholder="비밀번호를 입력해주세요" value="" style="margin-bottom: 50px;" />
						<input type="submit" value="로그인">
						<c:if test="${empty param.fail}">
						${empty param.fail}
					        <p>Your login attempt was not successful, try again.</p>
					        <p>Reason: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
					        <c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION"/>
					      </c:if>

					</form>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		</div>
	</div>
	<a href="main.do" class="btn  big-btn circle-btn dec-btn  color-bg flat-btn" style="margin-right: 25px;">건너뛰기</a> 
	<a href="join2.do" class="btn  big-btn circle-btn dec-btn  color-bg flat-btn">다음 단계</a>

</section>
