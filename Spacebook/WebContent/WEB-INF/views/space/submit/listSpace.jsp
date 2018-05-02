<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!-- Map -->
        <div class="map-container column-map left-pos-map">
            <div id="map-main"></div>
            <ul class="mapnavigation">
                <li><a href="#" class="prevmap-nav">Prev</a></li>
                <li><a href="#" class="nextmap-nav">Next</a></li>
            </ul>                        
        </div>
        <!-- Map end -->  
        <!--col-list-wrap -->   
        <div class="col-list-wrap right-list">
            <div class="listsearch-options fl-wrap" id="lisfw" >
                <div class="container">
                    <div class="listsearch-header fl-wrap">
                    
                    	<!------ 검색어가 있을경우 출력 ------>
                    	<c:if test="${result != null }">
                    		<h3>검색결과: <span>${result}</span></h3>
                    	</c:if>
                    	<c:if test='${result == null || result==""}'>
                        <h3><span>원하는 곳으로 이동해봐!!</span></h3>
                        </c:if>
                        
                        <div class="listing-view-layout">
                            <ul>
                                <li><a class="grid active" href="#" ><i class="fa fa-th-large" style="margin-top: 13px"></i></a></li>
                                <li><a class="list" href="#"><i class="fa fa-list-ul" style="margin-top: 13px"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- 검색 -->
                    <form action="search.do" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <!-- listsearch-input-wrap  -->  
                    <div class="listsearch-input-wrap fl-wrap">
                        <div class="listsearch-input-item" style="width:60%;">
                            <i class="mbri-key single-i"></i>
                            <input type="text" placeholder="검색키워드" value="" id="search" name="search"/>
                        </div>
                        <div class="listsearch-input-item" style="width:40%;">
                            <select name="space_category" class="chosen-select">
                            	<option value="">공간유형</option>
                           		<option value="작업실">작업실</option>
                           		<option value="연습실">연습실</option>
                           		<option value="세미나실">세미나실</option>
                           		<option value="스터디룸">스터디룸</option>
                           		<option value="파티룸">파티룸</option>
                           		<option value="공연장">공연장</option>
                           		<option value="다목적홀">다목적홀</option>
                           		<option value="엠티장소">엠티장소</option>
                           		<option value="워크숍장소">워크숍장소</option>
                           		<option value="레저시설">레저시설</option>
                           		<option value="카페">카페</option>
                           		<option value="">기타</option>
                           	</select>
                     	</div>
                        <div class="listsearch-input-text">
                            <!-- <label><i class="mbri-map-pin"></i> 주소검색 입력 </label> -->
                            <input type="text" placeholder="주소 검색" value="" name="space_addr1"/>
                            <span class="loc-act qodef-archive-current-location" onclick="locationList();"><i class="fa fa-dot-circle-o"></i></span>
                        </div>
                        <!-- hidden-listing-filter -->
                        <div class="hidden-listing-filter fl-wrap">
                            <div class="distance-input fl-wrap">
                                <div class="distance-title"> 내 위치 근방 <span></span> km 이내의 공간</div>
                                <div class="distance-radius-wrap fl-wrap">
                                    <input class="distance-radius rangeslider--horizontal" type="range" min="0" max="100" step="1" value="1" data-title="Radius around selected destination" onchange = "locationList(this)">
                                </div>
                            </div>
                            <!-- Checkboxes -->
                            <div class=" fl-wrap filter-tags">
                                <h4>편의시설</h4>
                                <c:forEach var="facility" items="${facility}">
                                <div class="col-md-3">
                               		<input type="checkbox" id="${facility.fac_no}" name="fac_no" value="${facility.fac_no}"/>
	                         		<label for="${facility.fac_no}">${facility.fac_name }</label>
                               	</div>
                               	</c:forEach>
                            </div>
                        </div>
                        <!-- hidden-listing-filter end -->
                        <button class="button fs-map-btn" type="submit">검색!</button>
                        <div class="more-filter-option">더 자세한 검색를 원하신다면? <span></span></div>
                    </div>
                    <!-- listsearch-input-wrap end -->
                    </form>
                </div>
            </div>
            <!-- list-main-wrap-->
            <div class="list-main-wrap fl-wrap card-listing">
                <a class="custom-scroll-link back-to-filters btf-r" href="#lisfw"><i class="fa fa-angle-double-up"></i><span>Back to Filters</span></a> 
                <div class="container" class="col-md-3">
                    <!-- listing-item -->
                    <c:if test="${counet == 0}">
                    		예약 가능한 공간이 없습니다.<br>
						   다른 검색조건으로 공간을 찾아보세요.
                    </c:if>
                    <div id="spaceList" class="spaceList">
                    <c:forEach var="spaceAll" items="${spaceAll}" varStatus="status">
                    <div class="listing-item" >
                        <article class="geodir-category-listing fl-wrap">
	                            <div class="geodir-category-img" style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${spaceAll.space_no }'">
	                                <img src="${spaceAll.space_img1 }"  style="height: 240px"><!-- style="width:420px;height:210px;" -->
	                                <div class="overlay"></div>
	                                <div class="list-post-counter"><span>${spaceAll.spaceFavoriteDTO.favorite }</span><i class="fa fa-heart"></i></div>
	                            </div>
                            <div class="geodir-category-content fl-wrap" ><!-- style="width:420px;height:230px;" -->
                                <a class="listing-geodir-category">${spaceAll.space_category }</a>
                                <!-- style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${category.space_no }'" -->
                                <div class="listing-avatar"><img src="${spaceAll.memberVO.mem_Img }" alt="">
                                    <span class="avatar-tooltip">Added By  <strong> ${spaceAll.memberVO.mem_Name }</strong></span>
                                </div>
                                <h3><a href="spaceView.do?space_no=${spaceAll.space_no }">${spaceAll.space_name }</a></h3>
                                <p>${spaceAll.space_intro1 }</p>
                                <div class="geodir-category-options fl-wrap">
                                    <div class="listing-rating card-popup-rainingvis" data-starrating2="${spaceAll.spaceReviewDTO.rev_rate}">
                                        <span>(${spaceAll.spaceReviewDTO.count} reviews)</span>
                                    </div>
                                    <div class="geodir-category-location" align="left" style="height: 70px"><i class="fa fa-map-marker" aria-hidden="true"></i>${spaceAll.space_addr1} <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${spaceAll.space_addr2}</div>
                                </div>
                            </div>
                        </article>
                    </div>
                    </c:forEach>
                    </div>
                    <!-- listing-item end-->                           
                    <div class="clearfix"></div>
                </div>
                  <c:if test="${counet != 0}">
                <a class="load-more-button" href="#">Load more <i class="fa fa-circle-o-notch"></i> </a>  
                </c:if>
            </div>
            <!-- list-main-wrap end-->
        </div>
        <!--col-list-wrap end --> 
        <div class="limit-box fl-wrap"></div>

