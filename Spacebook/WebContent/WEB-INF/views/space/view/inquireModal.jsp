<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- modal start-->
	<div class="main-register-wrap modalInquire" style="align-items: center;">
		<div class="main-overlay"></div>
		<div class="main-register-holder">
			<!-- list-single-main-item -->   
            <div class="list-single-main-item fl-wrap" id="sec5">
                <div class="list-single-main-item-title fl-wrap">
                    <h3>1:1 문의 하기(${spaceDetail.space_name})</h3>
                </div>
                <!-- Add Review Box -->
                <div id="add-review" class="add-review-box">
                    <!-- Review Comment -->
                    <fieldset>
                     	<form class="add-comment custom-form" action="spaceInquire.do" method="post" id="spaceInquireForm">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<input type="hidden" name="mem_no" value="${login.mem_No}">
						<input type="hidden" name="space_no" value="${spaceDetail.space_no}"> 
                        <div class="row">
							<input type="text" name="inq_sub" id="inq_sub" placeholder="제목을 입력주세요.">
                        	<textarea cols="40" rows="3" name="inq_note" id="inq_note" placeholder="문의 사항을 작성해주세요."></textarea>
	                    </div>
                        </form>
                   		<div class="row" style="padding-top: 20px">
                   			<button class="btn color-bg flat-btn" onclick="inquire()">등록 <i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
							<button class="btn flat-btn" style="background-color: gray;" onclick="inquireCancel()">취소</button>
                   		</div>
                    </fieldset>
                </div>
                <!-- Add Review Box / End -->
            </div>
            <!-- list-single-main-item end -->  
		</div>
	</div>
<!-- modal end -->