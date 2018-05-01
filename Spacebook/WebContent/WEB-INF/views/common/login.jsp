<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="parallax-section" data-scrollax-parent="true" id="sec1" style="height: 100%; padding: 10%;">
	<div class="bg par-elem " data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/full_bg.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
	<div class="overlay" style="opacity: 0.8"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-6" style="margin-top:0px;">
				<div class="error-wrap">
					<img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png" alt=""style="margin:40px auto;">
					<h2 style="font-size: 40px; padding-bottom: 20px;"> 로그인 후 이용해주세요!</h2>
					<p style="padding-bottom: 30px;">가입하는데 1분의 시간도 걸리지 않습니다! 어서가입하세요</p>
					<a href="javascript:window.history.go(-1);" class="btn  big-btn  color-bg flat-btn">뒤로가기</a>
				</div>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-5" style="margin-top:-200px;">
				<div class="" >
					<div class="main-overlay"></div>
					<div class="main-register-holder">
						<div class="main-register fl-wrap" style="box-shadow: 0px 0px 0px 10px rgba(255,255,255,0.3);">
							<h3>
								<span>SPACE<strong>BOOK</strong></span> 로그인 하기
							</h3>
							<div class="soc-log fl-wrap" style="margin-bottom: 25px;">
								<p>SNS 계정을 이용하여 로그인하기</p>
								<a href="https://kauth.kakao.com/oauth/authorize?client_id=899499d6220daee9a08638718e824675&redirect_uri=http://localhost:8328/Spacebook/kakaologin.do&response_type=code " style="height: 60px;">
									<img src="${pageContext.request.contextPath}/resources/bootstrap/images/kakao.jpg" width="95%;">
								</a>
							</div>
							<div class="log-separator fl-wrap">
								<span>or</span>
							</div>
							<div id="tabs-container">
								<ul class="tabs-menu">
									<li class="current"><a href="#tab-1">로그인</a></li>
									<li><a href="#tab-2">회원가입</a></li>
								</ul>
								<div class="tab">
									<div id="tab-1" class="tab-content">
										<div class="custom-form">
											<form method="post" action="login.do" id="main-login-form">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <label>이메일 </label> 
												<input name="email" type="text" onClick="this.select()" value="" id="login_id">
												<label>비밀번호 </label> 
												<input name="passwd" type="password" onClick="this.select()" value="" id="login_pwd">
												<a href="#" onClick="return CheckLogin();" class="log-submit-btn">
													<span>로그인 하기</span>
												</a>
												<div class="clearfix"></div>
												<div class="filter-tags">
													<input id="remember_me" type="checkbox" name="remember-me">
													<label for="remember_me">자동 로그인</label>
												</div>
											</form>
											<div class="lost_password">
												<a href="#">비밀번호를 잃어버리셨나요?</a>
											</div>
										</div>
									</div>
									<div class="tab">
										<div id="tab-2" class="tab-content">
											<div class="custom-form">
												<form method="post" class="main-register-form" id="main-register-form2" action="regist.do">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
													<input type="hidden" name="authority" value="ROLE_USER"> 
													<label>이메일 <span id="registCheck"></span> </label> 
													<input name="email" type="email" onClick="this.select()" value="" id="regist_id"> 
													<label>비밀번호</label> 
													<input name="password" id="regist_pwd_1" type="password" onClick="this.select()" value=""> 
													<label>비밀번호 확인</label> 
													<input name="password2" type="password" id="regist_pwd_2" onClick="this.select()" value="">
													<button type="button" class="log-submit-btn" onClick="return Check()">
														<span>가입하기</span>
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
