<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- modal start-->
	<div class="main-register-wrap modalQuest" style="align-items: center;">
		<div class="main-overlay"></div>
		<div class="main-register-holder">
			<!-- list-single-main-item -->   
            <div class="list-single-main-item fl-wrap" id="sec5">
                <div class="list-single-main-item-title fl-wrap">
                    <h3>호스트에게 문의하기</h3>
                </div>
                <!-- Add Review Box -->
                <div id="add-review" class="add-review-box">
                    <!-- Review Comment -->
                    <form   class="add-comment custom-form">
                        <fieldset>
                            <div class="row">
                                <div class="col-md-6">
                                    <label><i class="fa fa-user-o"></i></label>
                                    <input type="text" placeholder="작성자명" value=""/>
                                </div>
                                <div class="col-md-6">
                                    <label><i class="fa fa-envelope-o"></i>  </label>
                                    <input type="text" placeholder="Email Address*" value=""/>
                                </div>
                            </div>
                            <textarea cols="40" rows="3" placeholder="Your Review:"></textarea>
                        </fieldset>
                        <button class="btn color-bg flat-btn" onclick="">등록 <i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
						<button class="btn flat-btn" style="background-color: gray;" onclick="modalQuestClose()">취소</button>
                    </form>
                </div>
                <!-- Add Review Box / End -->
            </div>
            <!-- list-single-main-item end -->  
		</div>
	</div>
<!-- modal end -->