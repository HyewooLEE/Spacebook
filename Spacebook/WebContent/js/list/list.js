	var latitude = "0";
	var longitude = "0";
	
function locationList(length){
	var location ="0";

	
	location = length.value;
	var params = "location="+ location +"&latitude="+latitude+"&longitude="+longitude;
	$.ajax({
		type: "GET",
		url: "/Spacebook/location.do",
		data: params,
		/*cache: false,*/
		dataType:"json",
		success:function(result) {
			$('#spaceList').html('');
			for(var i=0; i<result.data.length; i++) {
				$('#spaceList').append(
						"<div class='listing-item' >"+
						"<article class='geodir-category-listing fl-wrap'>"+
                        "<div class='geodir-category-img'>"+
                            "<a href='spaceView.do?space_no="+result.data[i].space_no+"'><img src='"+result.data[i].space_img1+"' style='width:420px;height:210px;'></a>"+
                            "<div class='overlay'></div>"+
                            "<div class='list-post-counter'><span>"+result.data[i].spaceFavoriteDTO.favorite+"</span><i class='fa fa-heart'></i></div>"+
                        "</div>"+
                    "<div class='geodir-category-content fl-wrap' style='width:420px;height:230px;'>"+
                        "<a class='listing-geodir-category' href='listing.html'>"+result.data[i].space_category+"</a>"+
                        "<div class='listing-avatar'><a href='author-single.html'><img src='${login.mem_Img }' alt=''></a>"+
                            "<span class='avatar-tooltip'>Added By  <strong>${login.mem_Name }</strong></span>"+
                        "</div>"+
                        "<h3><a href='spaceView.do?space_no="+result.data[i].space_no+"'>"+result.data[i].space_name+"</a></h3>"+
                        "<p>"+result.data[i].space_intro1+"</p>"+
                        "<div class='geodir-category-options fl-wrap'>"+
                            "<div class='listing-rating card-popup-rainingvis' data-starrating2='"+result.data[i].spaceReviewDTO.rev_rate+"'>"+
                                "<span>("+result.data[i].spaceReviewDTO.count+"reviews)</span>"+
                            "</div>"+
                            "<div class='geodir-category-location' align='left'><i class='fa fa-map-marker' aria-hidden='true'></i>"+result.data[i].space_addr1+"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+result.data[i].space_addr2+"</div>"+
                       "</div>"+
    				"</div>"+
                "</article>"+
    			"</div>"
				);
			}
		}
	});	
}

function getLocation() {
	  if (navigator.geolocation) { // GPS를 지원하면
	    navigator.geolocation.getCurrentPosition(function(position) {
	    	latitude = position.coords.latitude;
	    	longitude = position.coords.longitude;
	    }, function(error) {
	    	alert("브라우저의 위치추적을 허용하지 않으셨습니다. 기본좌표로 이동합니다.");
	    	latitude = 37.5327619;
	    	longitude = 127.0139427;
	      console.error(error);
	    }, {
	      enableHighAccuracy: false,
	      maximumAge: 0,
	      timeout: Infinity
	    });
	  } else {
	    alert('GPS를 지원하지 않습니다');
	  }
	}
	getLocation()
	
function displayLocation(position){
	
	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;
	
	
	
}

