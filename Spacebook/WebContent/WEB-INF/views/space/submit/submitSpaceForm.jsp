<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<<<<<<< HEAD
<script>
/* $(function(){
	alert("111");
	var test1 = document.getElementById("space_category");
	var test2 = document.getElementById("category").value;
	alert(test2);
	for(var i = 0; i < 13; i++){
		if(test1[i].value == test2){
			test1[i].checked
		} 
	} 
	
	alert(test1[3].value);
=======
>>>>>>> branch 'master' of https://github.com/HyewooLEE/Spacebook

<<<<<<< HEAD
}); */
</script>
=======
>>>>>>> branch 'master' of https://github.com/HyewooLEE/Spacebook

<c:forEach var="selectFacility" items="${selectFacility}" >
<script>
$(function(){
	 var test = document.getElementsByName("fac_array");
	 test[${selectFacility} -1].checked=true;
 });
</script>
</c:forEach>

    <!--section --> 
    <section id="sec1">
        <!-- container -->
        <div class="container">
            <!-- profile-edit-wrap -->
            <div class="profile-edit-wrap">
                <div class="profile-edit-page-header">
                    <h2>나의 공간등록하기</h2>
                    <div class="breadcrumbs"><a href="main.do">Home</a><span>나의 공간등록하기</span></div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="fixed-bar fl-wrap">
                            <div class="user-profile-menu-wrap fl-wrap">
                                <!-- user-profile-menu-->
								<div class="user-profile-menu">
									<h3>마이 페이지</h3>
									<ul>
										<li><a href="dashboard-myprofile.html" class="user-profile-act"><i class="fa fa-user-o"></i>프로필
												수정</a></li>
										<li><a href="dashboard-password.html"><i class="fa fa-unlock-alt"></i>비밀번호 변경</a></li>
									</ul>
								</div>
								<!-- user-profile-menu end-->
				<!-- 일반 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 (일반)</h3>
                                    <ul>
                                        <li><a href="dashboard-listing-table.html"><i class="fa fa-th-list"></i>나의 예약리스트 <span>1</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>나의 찜공간 <span>2</span></a></li>
                                        <li><a href="inquireList.do"><i class="fa fa-comments-o"></i>나의 1:1문의 </a></li>
                                    </ul>
                                </div>
                                <!-- user-profile-menu end-->  
                 <!-- 호스트 -->
                                <!-- user-profile-menu-->
                                <div class="user-profile-menu">
                                    <h3>나의 공간 관리 (호스트)</h3>
                                    <ul>
                                        <li><a href="mySpaceList.do" class="user-profile-act"><i class="fa fa-th-list"></i>나의 공간 <span>${countMySpace }</span> </a></li>
                                        <li><a href="dashboard-bookings.html"> <i class="fa fa-calendar-check-o"></i>예약현황 <span>2</span></a></li>
                                        <li><a href="inquireListHost.do"><i class="fa fa-comments-o"></i>1:1문의 관리 </a></li>
                                    </ul>
                                </div>
                                <c:if test="${login.mem_Id eq 'admin@admin.com' }">
								<div class="user-profile-menu">
									<h3>관리자 메뉴</h3>
									<ul>
										<li><a href="adminMember.do" class="user-profile-act"><i class="fa fa-th-list"></i>회원 관리 </a></li>
										<li><a href="adminArticle.do"><i class="fa fa-th-list"></i>게시글 관리 </a></li>
									</ul>
								</div>
								</c:if>
                                <!-- user-profile-menu end-->                                      
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                    
                    <form id="submitSpaceForm" action="submitSpace.do?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="mem_no" value="${login.mem_No}">
                        <!-- profile-edit-container--> 
                        <div class="profile-edit-container add-list-container">
                            <div class="profile-edit-header fl-wrap">
                                <h4>나의 공간정보 등록</h4>
                            </div>
                            <div class="custom-form">
                            	<div class="row">
	                            	<div class="col-md-6">
		                            	<label>공간유형명</label>
		                            	<input type="hidden" id="category" value="${spaceDetail.space_category}" />
		                            	<select  id="space_category2" name="space_category2" class="chosen-select" data-placeholder="공간유형을 선택하세요">
		                            		<option value="작업실">작업실</option>
		                            		<option value="연습실">연습실</option>
		                            		<option value="세미나실">세미나실</option>
		                            		<option value="스터디룸">스터디룸</option>
		                            		<option value="파티룸">파티룸</option>
		                            		<option value="공연장">공연장</option>
		                            		<option value="다목적홀">다목적홀</option>
		                            		<option value="엠티장소">엠티장소</option>
		                            		<option value="워크샵장소">워크샵장소</option>
		                            		<option value="레저시설">레저시설</option>
		                            		<option value="카페">카페</option>
		                            		<option value="기타">기타</option>
		                            	</select>
	                            	</div>
                            	</div>
                                <label>공간명 <i class="fa fa-briefcase"></i></label>
                                <input type="text" id="space_name" name="space_name" placeholder="공간명을 입력하세요" value="${spaceDetail.space_name }"/>
                                
                                <div class="row">
                                 <div class="col-md-8">
                                 <label>공간 주소<i class="fa fa-map-marker"></i></label>
                                 <input type="text" id="space_addr1" placeholder="주소를 검색하세요" name="space_addr1" onClick="return findaddress();" readonly value="${spaceDetail.space_addr1 }"/>
                                 </div>
                                 <div class="col-md-3">
                                 <button class="btn color-bg flat-btn" type="button" onClick="return findaddress();">주소검색</button>
                                 <input type="hidden" id="map_latitude"  name="map_latitude" value="${map_latitude }"/> 
        						 <input type="hidden" id="map_longitude"  name="map_longitude" value="${map_longitude }"/>
                                 </div>	
                                </div>
                                
                                <label>상세주소<i class="fa fa-map-marker"></i></label>
                              	<input type="text" id="space_addr2" placeholder="상세주소를 입력하세요" name="space_addr2" value="${spaceDetail.space_addr2 }"/>
                              	
                              	<div class="map-container" id="mylocation">
									<div id="singleMap" data-latitude="37.5678912"
										data-longitude="126.98308969999994"
										data-mapTitle="Our Location"></div>
								</div>
								
                <!-- 시작 -->
      
		<div id="map_canvas" style="width: 910.5px; height: 380px">
			<div class="" style='overflow:hidden;text-align:center;border:1px solid #e1e1e1;width:680px;height:380px;margin-top:10px;padding-top:10px;margin-bottom:10px; '>
			<img src='http://maps.google.com/maps/api/staticmap?center=&zoom=5&size=640x360&markers=icon:http://www.iegate.net/maps/images/ruby_point.png|,&sensor=false'></div>	
		</div>
                <!-- 끝 -->

                            </div>
                        </div>
                        <!-- profile-edit-container end--> 
                        <!-- profile-edit-container--> 
                        <div class="profile-edit-container add-list-container">
                            <div class="custom-form">
                                <label>공간 한줄소개<i class="fa fa-th-list"></i></label>
                                <input type="text" id="space_intro1" name="space_intro1" value="${spaceDetail.space_intro1 }"/>
                                <label>공간 상세소개<i class="fa fa-comments-o"></i></label>
                                <textarea cols="40" rows="3" id="space_intro2" name="space_intro2">${spaceDetail.space_intro2 }</textarea>
                            </div>
                        </div>
                        <!-- profile-edit-container end--> 
                        <!-- profile-edit-container--> 
                        <div class="profile-edit-container add-list-container">
                            <div class="custom-form">
                            	<label>편의시설</label>
                            	<!-- Checkboxes -->
                                <div class="filter-tags">
                                <c:set var="doneLoop" value="false"/>
                                 <%-- <c:forEach var="selectFacility" items="${selectFacility}" begin="1" varStatus="status1" end="13"> --%>
                                	<c:forEach var="facility" items="${facility}" varStatus="status">
				                       <div class="col-md-3">
				                       <%--   <c:if test="${status.count == selectFacility}">
				                        <c:set var="doneLoop" value="true"/>
				                       		 	<input type="checkbox" id="${facility.fac_no}" name="fac_array" value="${facility.fac_no}" checked/>
		                         				<label for="${facility.fac_no}">${facility.fac_name } </label>
				                       	</c:if>
				                       	 
				                       	<c:if test="${status.count != selectFacility}">
				                       	 	<input type="checkbox" id="${facility.fac_no}" name="fac_array" value="${facility.fac_no}"/>
		                         			<label for="${facility.fac_no}">${facility.fac_name }</label>
		                         			<c:set var="doneLoop" value="true"/>
				                       	</c:if> --%>
				                        
                                			<input type="checkbox" id="${facility.fac_no}" name="fac_array" value="${facility.fac_no}"/>
		                         			<label for="${facility.fac_no}">${facility.fac_name }</label>
				                        </div>
				                        </c:forEach>
                                	<%-- </c:forEach> --%>
                                </div>
                                <label>공간태그 ( , 로 구분 해주세요 )<i class="fa fa-key"></i></label>
                                <input type="text" id="space_tag" name="space_tag" value="${spaceDetail.space_tag }"/>
                                <label>웹사이트<i class="fa fa-globe"></i></label>
                                <input type="text" id="space_site" name="space_site" value="${spaceDetail.space_site }"/>
                                <div class="row">
                                    <!--col --> 
                                    <div class="col-md-6">
                                    	<label>운영 시작시간<i class="fa fa-calendar-o"></i></label>
                                    	<input type="text" id="space_open" name="space_open" class="timepicker" value="${spaceDetail.space_open }"/>
                                    </div>
                                    <div class="col-md-6">
                                    	<label>운영 종료시간<i class="fa fa-calendar-o"></i></label>
                                    	<input type="text" id="space_close" name="space_close" class="timepicker" value="${spaceDetail.space_close }"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <!--col --> 
                                    <div class="col-md-6">
                                    	<label>전화번호<i class="fa fa-phone"></i></label>
                                    	<input type="text" id="space_phone" name="space_phone" value="${spaceDetail.space_phone }"/>
                                    </div>
                                    <div class="col-md-6">
                                    	<label>최대수용인원</label>
                                    	<div class="quantity fl-wrap">
                                        	<input type="button" value="-" class="minus" onclick="subQuantity()" />
                                           	<input type="text" id="space_peo_count" name="space_peo_count" value="${spaceDetail.space_peo_count }" title="Qty" class="qty" size="4" placeholder="1"/>
                                           	<input type="button" value="+" class="plus" onclick="addQuantity()" />
                                      </div>
                                    </div>
                                </div>
                                <label>주의사항<i class="fa fa-comments-o"></i></label>
                                <textarea cols="40" rows="3" id="space_cau" name="space_cau">${spaceDetail.space_cau }</textarea><p>
                            </div>
                        </div>
                        <!-- profile-edit-container end-->      
                        <!-- profile-edit-container--> 
                        <div class="profile-edit-container add-list-container">
                            <div class="custom-form">
                                <div class="row">
                                    <!--col --> 
                                    <div class="col-md-4">
                                    <label>대표 이미지</label>
                                        <div class="add-list-media-wrap">
                                            <div class="fuzone" ><%-- style="src:${space_img1 }" id="space_img1_src" --%>
                                            	<div id="img1" style="display:none;"><img src="${space_img1 }" id="space_img1_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text1">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img1" name="report1" value="${spaceDetail.space_img1 }" accept="image/*">
                                            </div>
                                        </div>
                                    </div>
                                    <!--col end--> 
                                </div>
                                <div class="row">
                                 <div class="col-md-12" style="text-align: left;"> 
                                     <label>상세 이미지</label>
                                 </div>
                                </div>
                                <div class="row">
                                    <!-- col  -->
                                    <div class="col-md-4">
                                    	<div class="add-list-media-wrap">
                                            <div class="fuzone">
                                            	<div  id="img2" style="display:none;"><img src="${space_img2 }" id="space_img2_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text2">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img2" name="report2" value="${spaceDetail.space_img2 }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="add-list-media-wrap">
                                            <div class="fuzone">
                                            	<div  id="img3" style="display:none;"><img src="${space_img3 }" id="space_img3_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text3">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img3" name="report3" value="${spaceDetail.space_img3 }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="add-list-media-wrap">
                                            <div class="fuzone">
                                            	<div  id="img4" style="display:none;"><img src="${space_img4 }" id="space_img4_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text4">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img4" name="report4" value="${spaceDetail.space_img4 }">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- col end  -->
                                </div>
                                <div class="row">
                                    <!-- col  -->
                                    <div class="col-md-4">
                                    <label></label>
                                        <div class="add-list-media-wrap">
                                            <div class="fuzone">
                                                <div  id="img5" style="display:none;"><img src="${space_img5 }" id="space_img5_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text5">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img5" name="report5" value="${spaceDetail.space_img5 }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    <label></label>
                                        <div class="add-list-media-wrap">
                                            <div class="fuzone">
                                                <div  id="img6" style="display:none;"><img src="${space_img6 }" id="space_img6_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text6">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img6" name="report6" value="${spaceDetail.space_img6 }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    <label></label>
                                        <div class="add-list-media-wrap">
                                            <div class="fuzone">
                                                <div  id="img7" style="display:none;"><img src="${space_img7 }" id="space_img7_src" style="width:271px;height:179px;"></div>
                                                <div class="fu-text" id="text7">
                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                </div>
                                                <input type="file" class="upload" id="space_img7" name="report7" value="${spaceDetail.space_img7 }">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- col end  -->
                                </div>
                            </div> 
                        </div>
                        <!-- profile-edit-container end-->
                        <!-- profile-edit-container--> 
                        <div class="profile-edit-container add-list-container">
                            <div class="profile-edit-header fl-wrap">
                                <h4>입금정보</h4>
                            </div>
                            <div class="custom-form">
                                <div class="row">
                                    <!--col --> 
                                    <div class="col-md-6">
                                    	<label>일일 대여비용</label>
                                    	<input type="text" id="space_sum" name="space_sum" value="${spaceDetail.space_sum }"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <!--col --> 
                                    <div class="col-md-6">
                                    	<label>입금은행${spaceDetail.space_bank}</label>
                                    	<input type="hidden" id="space_bank2" value="${spaceDetail.space_bank}" />
                                    	<select data-placeholder="은행을 선택하세요" class="chosen-select" id="space_bank" name="space_bank" >
                                            <option value="SC제일은행">SC제일은행</option>
                                            <option value="전북은행">전북은행</option>
                                            <option value="제주은행">제주은행</option>
                                            <option value="우체국">우체국</option>
                                            <option value="BNK부산은행">BNK부산은행</option>
                                            <option value="대구은행">대구은행</option>
                                            <option value="농협">농협</option>
                                            <option value="새마을금고중앙회">새마을금고중앙회</option>
                                            <option value="수협중앙회">수협중앙회</option>
                                            <option value="신한은행">신한은행</option>
                                            <option value="기업은행">기업은행</option>
                                            <option value="하나은행">하나은행</option>
                                            <option value="경남은행">경남은행</option>
                                            <option value="광주은행">광주은행</option>
                                            <option value="한국씨티은행">한국씨티은행</option>
                                            <option value="우리은행">우리은행</option>
                                            <option value="광주은행">광주은행</option>
                                            <option value="도이치은행">도이치은행</option>
                                            <option value="카카오뱅크">카카오뱅크</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <!--col --> 
                                    <div class="col-md-6">
                                    	<label>계좌번호<i class="fa fa-key"></i></label>
                                    	<input type="text" id="space_account" name="space_account" value="${spaceDetail.space_account }"/>
                                    </div>
                                    <div class="col-md-6">
                                    	<label>예금주<i class="fa fa-user-o"></i></label>
                                    	<input type="text" id="space_depositor" name="space_depositor" value="${spaceDetail.space_depositor }"/>
                                    </div>
                                </div>
                                <button class="btn color-bg flat-btn" type="submit" onClick="return spaceSubmit()">등록<i class="fa fa-angle-right"></i></button>
                            </div>
                        </div>
                        <!-- profile-edit-container end-->     
                        </form>                                     
                    </div>
                </div>
            </div>
            <!--profile-edit-wrap end -->
        </div>
        <!--container end -->
    </section>
    <!-- section end -->	
    <div class="limit-box fl-wrap"></div>
    <!-- wrapper end -->	
