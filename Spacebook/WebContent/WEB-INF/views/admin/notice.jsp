<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <section class="parallax-section" data-scrollax-parent="true">
    <div class="bg par-elem "  data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/all/5.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
    <div class="overlay"></div>
    <div class="bubble-bg"></div>
    <div class="container">
        <div class="section-title center-align">
            <h2><span>공지사항</span></h2>
            <div class="breadcrumbs fl-wrap"><a href="main.do">홈</a> <span>공지사항</span></div>
            <span class="section-separator"></span>
        </div>
    </div>
    <div class="header-sec-link">
        <div class="container"><a href="#sec1" class="custom-scroll-link"> 필독하기!</a></div>
    </div>
</section>
<section id="sec1">
	<!-- container -->
	<div class="container">
		<!-- profile-edit-wrap -->
		<div class="profile-edit-wrap">
			<div class="profile-edit-page-header">
				<h2>공지 사항</h2>
				<div class="breadcrumbs">
					<a href=main.do>홈</a><span>공지 사항</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="dashboard-list-box fl-wrap">
						<div class="dashboard-header fl-wrap">
							 <h3 style="display:inline; float:left;">글 목록</h3> 
						</div>
						<!-- dashboard-list end-->
						<c:forEach var="articles" items="${articles }">
							<div class="dashboard-list" style="width:100%">
								<div class="dashboard-message" >
									<div class="dashboard-message-text" style="margin-left:0px;">
										<h4 style="padding-bottom: 0px;">
											 관리자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 <a href="noticeContent.do?notice_No=${articles.notice_No }&pageNumber=${page.pageNumber}">${articles.notice_Title }</a>
											 <span class="pull-right">${articles.notice_Date }</span>
										</h4>
	 								</div>
								</div>
							</div>
						</c:forEach>
						<!-- dashboard-list end-->
					</div>
					<c:if test="${login.mem_Id eq 'admin@admin.com' }">
					<a href="noticeWriteForm.do" class="btn circle-btn color-bg flat-btn pull-right" style="margin-top:20px;">글쓰기<i class="fa fa-check-square-o"></i></a>
					</c:if>
					<!-- pagination-->
					<c:if test="${page.articleCount > 0}">
					<div class="pagination">
						<c:if test="${page.pageNumber > 10}">
						<a href="notice.do?pageNumber=${page.startPage-10 }" class="prevposts-link">&lt;</a> 
						</c:if>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<c:if test="${page.pageNumber == i }">
							<a href="notice.do?pageNumber=${i}" class="current-page">${i}</a>
							</c:if>
							<c:if test="${page.pageNumber != i }">
							<a href="notice.do?pageNumber=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<c:if test="${page.endPage < page.pageCount}">
						<a href="notice.do?pageNumber=${page.startPage+10 }" class="nextposts-link">&gt;</a>
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

