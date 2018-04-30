function locationList(){
	
	var location ="";
	var zone = "";
	
	var params = "location="+ location +"&zone="+zone;
	
	$.ajax({
		type: "get",
		url: "/Spacebook/showReview.do",
		data: params,
		cache: false,
		dataType:"json",
		success:function(result) {
			
			$('#spaceList').html('');
			for(var i=0; i<result.data.length; i++) {
				$('#spaceList').append(
						"<article class='geodir-category-listing fl-wrap'>"+
                        "<div class='geodir-category-img'>"+
                            "<a href='spaceView.do?space_no="+result.data[i].space_no+"'><img src='"+result.data[i].space_img1+"' style='width:420px;height:210px;'></a>"+
                            "<div class='overlay'></div>"+
                            "<div class='list-post-counter'><span>"+result.data[i].spaceReviewDTO.rev_rate+"</span><i class='fa fa-heart'></i></div>"+
                        "</div>"+
                    "<div class='geodir-category-content fl-wrap' style='width:420px;height:230px;'>"+
                        "<a class='listing-geodir-category' href='listing.html'>"+result.data[i].space_category+"</a>"+
                        "<div class='listing-avatar'><a href='author-single.html'><img src='${login.mem_Img }' alt=''></a>"+
                            "<span class='avatar-tooltip'>Added By  <strong>${login.mem_Name }</strong></span>"+
                        "</div>"+
                        "<h3><a href='spaceView.do?space_no="+result.data[i].space_no+"'>"+result.data[i].space_name+"</a></h3>"+
                        "<p>"+result.data[i].space_intro1+"</p>"+
                        "<div class='geodir-category-options fl-wrap'>"+
                            "<div class='listing-rating card-popup-rainingvis' data-starrating2='5'>"+
                                "<span>(7 reviews)</span>"+
                            "</div>"+
                            "<div class='geodir-category-location' align='left'><i class='fa fa-map-marker' aria-hidden='true'></i>"+result.data[i].space_addr1+"<br>"+result.data[i].space_addr2+"</div>"+
                       "</div>"+
    				"</div>"+
                "</article>"
				);
			}
		}
	});	
}

var  ourCoords = { //DB안의 위치
		latitude : 37.5666263,
		longitude : 126.9783924
}

//window.onload = getMyLocation

function getMyLocation(){
	
	if(navigator.geolocation){
		
		navigator.geolocation.getCurrentPosition(
				displayLocation,displayError
		);
		
	}else{
		alert("내 위치 정보제공 설정이 꺼져 있거나, 지원하지 않는 브라우져 입니다.");
	}
}

function displayLocation(position){
	
	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;
	
	
	
}
















