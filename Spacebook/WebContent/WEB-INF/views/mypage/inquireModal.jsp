<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- modal start-->
	<div class="main-register-wrap showModal" style="align-items: center;">
		<div class="main-register-holder">
			<!-- list-single-main-item -->   
            <div class="list-single-main-item fl-wrap" id="sec5">
                <div class="list-single-main-item-title fl-wrap">
                    <h3>문의 답변</h3>
                </div>
                <div class="modal-body">
                    <!-- Review Comment -->
                    <div class="form-group">
						<input class="form-control " type="text" value="${spaceAll.space_title }" readonly>
					</div>
					<div class="form-group">
						<input class="form-control " type="text" value="${spaceAll.space_writeDate }">
					</div>
					<div class="form-group">
						<textarea rows="2" class="form-control">${spaceAll.space_note }</textarea>
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