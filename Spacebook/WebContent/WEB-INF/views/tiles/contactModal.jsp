<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- modal start-->
	<div class="main-register-wrap contactsModal" style="align-items: center;">
		<div class="main-overlay"></div>
		<div class="main-register-holder">
			<!-- list-single-main-item -->   
            <div class="list-single-main-item fl-wrap" id="sec5">
                <div class="list-single-main-item-title fl-wrap">
                    <h3>문의 하기</h3>
                </div>
                <!-- Add Review Box -->
                <div id="add-review" class="add-review-box">
                    <!-- Review Comment -->
                    <fieldset>
                     	<form class="add-comment custom-form" action="contacts.do" method="get" id="contacts">
                        <div class="row">
	                        <div class="col-md-6">
<<<<<<< HEAD
	                       		<input type="text" name="con_senderName" id="con_senderName" placeholder="보내실분 성함">
=======
	                       		<input type="text" name="con_senderName" id="con_senderName" value="${login.mem_Name}" placeholder="보내실분 성함을 입력해주세요.">
>>>>>>> branch 'master' of https://github.com/HyewooLEE/Spacebook
	                       	</div>	
	                       	<div class="col-md-6">
<<<<<<< HEAD
	                       		<input type="text" name="con_senderEmail" id="con_senderEmail" placeholder="보내실분 이메일 주소">
=======
	                       		<input type="text" name="con_senderEmail" id="con_senderEmail" value="${login.mem_Id}" placeholder="보내실분 이메일 주소를 입력해주세요.">
>>>>>>> branch 'master' of https://github.com/HyewooLEE/Spacebook
	                       	</div>	
	                     </div>
						<input type="text" name="con_title" id="con_title" placeholder="제목을 입력주세요.">
                       	<textarea cols="40" rows="3" name="con_note" id="con_note" placeholder="문의 사항을 작성해주세요."></textarea>
	                    
                        </form>
                   		<div class="row" style="padding-top: 20px">
                   			<button class="btn color-bg flat-btn" onclick="checkContacts();">등록 <i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
							<button class="btn flat-btn" style="background-color: gray;" onclick="closeContacts()">취소</button>
                   		</div>
                    </fieldset>
                </div>
                <!-- Add Review Box / End -->
            </div>
            <!-- list-single-main-item end -->  
		</div>
	</div>
<!-- modal end -->