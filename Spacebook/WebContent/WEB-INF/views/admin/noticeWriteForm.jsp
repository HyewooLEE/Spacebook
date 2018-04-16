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
				<h2>공지 사항</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><a href="notice.do">공지 사항</a><span>글 쓰기</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="list-single-main-item fl-wrap" id="sec5">
						<div class="list-single-main-item-title fl-wrap" >
							<h3>글 쓰기</h3>
						</div>
						<!-- Add Review Box -->
						<div id="add-review" class="add-review-box">
							<!-- Review Comment -->
							<form class="add-comment custom-form" action="writeNotice.do"  method="POST" id="form">
								<fieldset>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<input type="text" placeholder="제목" style="padding: 25px 20px; height: 50px;" name="notice_Title" id="title"/>
									<textarea cols="80" rows="10" placeholder="내용" style="height: 350px;" name="notice_Content" id="content"></textarea>
								</fieldset>
								<button class="btn  big-btn  color-bg flat-btn pull-right" type="button" onClick="return Check();">글쓰기&nbsp;&gt;</button>
							</form>
						</div>
						<!-- Add Review Box / End -->
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
<!--section -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/noticeForm.js"></script>
