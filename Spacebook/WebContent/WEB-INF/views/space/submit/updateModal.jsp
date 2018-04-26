<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="mySpace" items="${mySpace }">
<!-- modal start-->
	<div class="main-register-wrap showModal" style="align-items: center;">
		<div class="main-register-holder">
			<!-- list-single-main-item -->   
            <div class="list-single-main-item fl-wrap" id="sec5">
                <div class="list-single-main-item-title fl-wrap">
                    <h3>공간수정</h3>
                </div>
                <div class="modal-body">
                    <!-- Review Comment -->
                    <div class="form-group">
						<input class="form-control " type="text" value="${mySpace.space_name}" readonly>
					</div>
					<div class="form-group">
						<input class="form-control " type="text" value="${mySpace.space_category}" readonly>
					</div>
					<div class="form-group">
						${mySpace.space_img1}
					</div>
					<div class="form-group">
						<input class="form-control " type="text" value="${mySpace.space_no}">
					</div>
					<div class="form-group">
						<textarea rows="2" class="form-control">${mySpace.space_addr1}</textarea>
					</div>
                 	<div class="row" style="padding-top: 20px">
						<button class="btn flat-btn" style="background-color: gray;" onclick="closeInquire()">닫기</button>
                 	</div>
                </div>
            </div>
            <!-- list-single-main-item end -->  
		</div>
	</div>
<!-- modal end -->
</c:forEach>