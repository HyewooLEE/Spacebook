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
                        <h3>Results For : <span>Food and Drink</span></h3>
                        
                        <div class="listing-view-layout">
                            <ul>
                                <li><a class="grid active" href="#" ><i class="fa fa-th-large" style="margin-top: 13px"></i></a></li>
                                <li><a class="list" href="#"><i class="fa fa-list-ul" style="margin-top: 13px"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- listsearch-input-wrap  -->  
                    <div class="listsearch-input-wrap fl-wrap">
                        <div class="listsearch-input-item">
                            <i class="mbri-key single-i"></i>
                            <input type="text" placeholder="검색키워드" value=""/>
                        </div>
                        <div class="listsearch-input-item">
                            <select data-placeholder="Location" class="chosen-select" >
                                <option>All Locations</option>
                                <option>Bronx</option>
                                <option>Brooklyn</option>
                                <option>Manhattan</option>
                                <option>Queens</option>
                                <option>Staten Island</option>
                            </select>
                        </div>
                        <div class="listsearch-input-item">
                            <select  id="space_category" name="space_category" class="chosen-select">
                            	<option>공간유형</option>
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
                           		<option value="기타">기타</option>
                           	</select>
                        </div>
                        <div class="listsearch-input-text">
                            <!-- <label><i class="mbri-map-pin"></i> 주소검색 입력 </label> -->
                            <input type="text" placeholder="주소 검색" value=""/>
                            <span class="loc-act qodef-archive-current-location"><i class="fa fa-dot-circle-o"></i></span>
                        </div>
                        <!-- hidden-listing-filter -->
                        <div class="hidden-listing-filter fl-wrap">
                            <div class="distance-input fl-wrap">
                                <div class="distance-title"> 내 위치 근방 <span></span> km 이내의 공간</div>
                                <div class="distance-radius-wrap fl-wrap">
                                    <input class="distance-radius rangeslider--horizontal" type="range" min="1" max="100" step="1" value="1" data-title="Radius around selected destination">
                                </div>
                            </div>
                            <!-- Checkboxes -->
                            <div class=" fl-wrap filter-tags">
                                <h4>편의시설</h4>
                                <c:forEach var="facility" items="${facility}">
                                <div class="col-md-3">
                               		<input type="checkbox" id="${facility.fac_no}" name="fac_array" value="${facility.fac_no}"/>
	                         		<label for="${facility.fac_no}">${facility.fac_name }</label>
                               	</div>
                               	</c:forEach>
                            </div>
                        </div>
                        <!-- hidden-listing-filter end -->
                        <button class="button fs-map-btn">검색!</button>
                        <div class="more-filter-option">더 자세한 검색를 원하신다면? <span></span></div>
                    </div>
                    <!-- listsearch-input-wrap end -->
                </div>
            </div>
            <!-- list-main-wrap-->
            <div class="list-main-wrap fl-wrap card-listing">
                <a class="custom-scroll-link back-to-filters btf-r" href="#lisfw"><i class="fa fa-angle-double-up"></i><span>Back to Filters</span></a> 
                <div class="container" class="col-md-3">
                    <!-- listing-item -->
                    <c:forEach var="spaceAll" items="${spaceAll}" varStatus="status">
                    <div class="listing-item">
                        <article class="geodir-category-listing fl-wrap">
	                            <div class="geodir-category-img">
	                                <a href="spaceView.do?space_no=${spaceAll.space_no }"><img src="${spaceAll.space_img1 }" style="width:420px;height:210px;"></a>
	                                <div class="overlay"></div>
	                                <div class="list-post-counter"><span>${spaceAll.spaceReviewDTO.rev_rate }</span><i class="fa fa-heart"></i></div>
	                            </div>
                            <div class="geodir-category-content fl-wrap" style="width:420px;height:230px;">
                                <a class="listing-geodir-category" href="listing.html">${spaceAll.space_category }</a>
                                <div class="listing-avatar"><a href="author-single.html"><img src="${login.mem_Img }" alt=""></a>
                                    <span class="avatar-tooltip">Added By  <strong> ${login.mem_Name }</strong></span>
                                </div>
                                <h3><a href="spaceView.do?space_no=${spaceAll.space_no }">${spaceAll.space_name }</a></h3>
                                <p>${spaceAll.space_intro1 }</p>
                                <div class="geodir-category-options fl-wrap">
                                    <div class="listing-rating card-popup-rainingvis" data-starrating2="5">
                                        <span>(7 reviews)</span>
                                    </div>
                                    <div class="geodir-category-location" align="left"><i class="fa fa-map-marker" aria-hidden="true"></i>${spaceAll.space_addr1} <br>${spaceAll.space_addr2}</div>
                                </div>
                            </div>
                        </article>
                    </div>
                    </c:forEach>
                    <!-- listing-item end-->                           
                    <div class="clearfix"></div>
                </div>
                <a class="load-more-button" href="#">Load more <i class="fa fa-circle-o-notch"></i> </a>  
            </div>
            <!-- list-main-wrap end-->
        </div>
        <!--col-list-wrap end --> 
        <div class="limit-box fl-wrap"></div>

