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
					<a href=main.do>홈</a><a href=notice.do>공지 사항</a><span>상세 글</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="list-single-main-item fl-wrap">
						<div class="list-single-main-item-title fl-wrap">
							<h3>
								<a href="#">${article.notice_Title }</a>
							</h3>
						</div>
						<p>${article.notice_Content }</p>
						<div class="post-author pull-right">
							<a href="#"><span>관리자</span></a>
						</div>
						<div class="post-opt pull-right">
							<ul>
								<li><i class="fa fa-calendar-check-o"></i> <span>${article.notice_Date }</span></li>
							</ul>
						</div>
					</div>
					<c:if test="${login.mem_Id eq 'admin@admin.com' }">
						<a href="noticeUpdateForm.do?notice_No=${article.notice_No }" class="btn circle-btn color-bg flat-btn pull-right" style="margin-top: 20px; margin-left: 15px;">수정하기</a> 
						<a href="noticeDelete.do?notice_No=${article.notice_No}" onClick="noticeDelete()" class="btn circle-btn color-bg flat-btn pull-right" style="margin-top: 20px; margin-left: 15px;">삭제하기</a>
					</c:if>
				</div>
				<div class="col-md-12">
				<a href="notice.do?pageNumber=${param.pageNumber }" class="btn circle-btn color-bg flat-btn pull-right" style="margin-top: 20px;">리스트로</a>
				</div>
			</div>
		</div>
	</div>
	<!--container end -->
</section>
<!-- section end -->
<div class="limit-box fl-wrap"></div>
<!--section -->
<script>
function noticeDelete(){
	swal({
		  title: "정말 삭제 하시겠습니까?",
		  text: "글이 삭제되면 복구가 되지 않습니다.",
		  icon: "warning",
		  buttons: ["취소","삭제"]
		})
		.then((willDelete) =>{
		  if (willDelete) {
			  swal("성공 적으로 삭제 되었습니다.", {
			      icon: "success",
			    });
			  fetch('/Spacebook/noticeDelete.do?notice_No=${article.notice_No}');
		  } else {
			  return false;
		  }
		});
	
}
</script>
