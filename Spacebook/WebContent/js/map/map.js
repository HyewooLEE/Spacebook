(function ($) {
	"use strict";
	var locations = new Array();
    //Icon
    var markerIcon = {
        anchor: new google.maps.Point(22, 16),
        url: '/Spacebook/js/map/images/marker.png',
        //'images/marker.png'
        
    }
        
    function mainMap() {
    //시작
    //DB에서 정보가 져오기
		 //시도테이블의 리스트 가져오기
		 var params = "dumi=" + new Date(); 
		 $.ajax({
			type:"get",  //포스트 방식
			url:"/Spacebook/MapList.do",   //url주소
			data:params,  //요청에 전달되는 프로퍼티를 가진 객체
			dataType:"json",
			success:function(args){  //응답이 성공 상태 코드를 반환하면 호출되는 함수
				
				function locationData(locationURL, locationCategory, locationImg, locationTitle, locationAddress, locationPhone, locationStarRating, locationRevievsCounter) {
		            return ('<div class="map-popup-wrap"><div class="map-popup"><div class="infoBox-close"><i class="fa fa-times" style="margin-top: 11px"></i></div><div class="map-popup-category">' + locationCategory + '</div><a href="' + locationURL + '" class="listing-img-content fl-wrap"><img src="' + locationImg + '" alt=""></a> <div class="listing-content fl-wrap"> <div class="listing-title fl-wrap"><h4><a href=' + locationURL + '>' + locationTitle + '</a></h4><span class="map-popup-location-info"><i class="fa fa-map-marker"></i>' + locationAddress + '</span><span class="map-popup-location-phone"><i class="fa fa-phone"></i>' + locationPhone + '</span></div></div></div></div>')
			        }  
				
				for(var i=0; i < args.data.length; i++){
					locations[i] = [locationData('#',args.data[i].space_category, args.data[i].space_img1, args.data[i].space_name, args.data[i].space_addr1, args.data[i].space_phone,"+38099231212","4","10"), args.data[i].map_latitude, args.data[i].map_longitude,i,markerIcon]
					//args.data[idx] : args 는 function(args)의 인자.data는 controller.java에서 json객체에 넣어준 key(여기서는 list가 값이 된다).[idx]는 list의 몇번째 데이터를 가져올지 배열을 나타냄
					}
				locations[args.data.length] = [locationData('#','내 위치', '${pageContext.request.contextPath}/PROFILE/profile_default.jpg', '현재 위치 입니다.', '여기가 어딜까??', '전화번호',"+38099231212","4","10"), latitude, longitude,args.data.length,markerIcon]
				
				
				/*locations = [  //경로 				, type    ,       대표사진            ,    제목                        , 위치이름                        ,  전화 번호
	            [locationData('listing-single2.html', 'Hotels', 'images/all/1.jpg', 'Luxary Hotel-Spa', "1327 Intervale Ave, Bronx, NY ", "+38099231212", "5", "27"), 35.563910, 127.154312, 1, markerIcon],
	            [locationData('listing-single.html', 'Food and Drink', 'images/all/1.jpg', 'Luxary Restaurant', "W 85th St, New York, NY ", "+38099231212", "4", "5"), 35.76221766, 127.363181, 2, markerIcon],
	            [locationData('listing-single.html', 'Gym - Fitness', 'images/all/1.jpg', 'Gym In CityCenter', "40 Journal Square Plaza, Jersey City, NJ", "+38099231212", "4", "5"), 36.848588, 125.371124, 3, markerIcon],
	            [locationData('listing-single.html', 'Shop - Store', 'images/all/1.jpg', 'Shop In City Mol', "75 Prince St, New York, NY ", "+38099231212", "4", "127"), 35.72228267, 127.371124, 4, markerIcon],
	            [locationData('listing-single.html', 'Food and Drink', 'images/all/1.jpg', 'Luxary Restaurant', "34-42 Montgomery St, New York, NY", "+38099231212", "5", "43"), 32.94982541, 125.209834, 5, markerIcon],
	            [locationData('listing-single.html', 'Gym - Fitness', 'images/all/1.jpg', 'Gym In CityCenter', "70 Bright St, Jersey City, NJ", "+38099231212", "4", "7"), 34.90261483, 129.216968, 6, markerIcon],
	            [locationData('listing-single.html', 'Shop - Store', 'images/all/1.jpg', 'Shop In City Mol', "123 School St. Lynchburg, NY ", "+38099231212", "3", "4"), 35.851702, 129.216968, 7, markerIcon],
	            [locationData('listing-single2.html', 'Hotels', 'images/all/1.jpg', 'Fancy Hotel', "Mt Carmel Pl, New York, NY", "+38099231212", "5", "3"), 35.58423508, 129.863657, 8, markerIcon],
	            [locationData('listing-single2.html', 'Hotels', 'images/all/1.jpg', 'Luxary Hotel-Spa', "1-30 Hunters Point Ave, Long Island City, NY", "+38099231212", "5", "12"), 37.750000, 127.133858, 9, markerIcon],
	            [locationData('listing-single3.html', 'Conference and Events', 'images/all/1.jpg', 'Web Design Event ', "726-1728 2nd Ave, New York, NY", "+38099231212", "5", "17"), 33.73112881, 126.133858, 10, markerIcon],
	            [locationData('listing-single3.html', 'Conference and Events', 'images/all/1.jpg', 'Apartment Design Event ', "9443 Fairview Ave, North Bergen, NJ", "+38099231212", "4", "11"), 33.67386831, 127.790222, 11, markerIcon],
	            [locationData('listing-single3.html', 'type - 바다', '/ProTest/images/map/ES.JPG', '동해', "대한민국 동해", "+Call Me", "3.3", "17"), 39.98386831, 134.290222, 11, markerIcon],
	            ];*/
			
				
				for (i = 0; i < locations.length; i++) {
		            marker = new google.maps.Marker({
		                animation: google.maps.Animation.DROP,
		                position: new google.maps.LatLng(locations[i][1], locations[i][2]), //위치
		                icon: locations[i][4],
		                id: i
		            });
		            
		            allMarkers.push(marker);
		            var ib = new InfoBox();
		            google.maps.event.addListener(ib, 'domready', function () {
		                cardRaining();
		            });
		            
		            google.maps.event.addListener(marker, 'click', (function (marker, i) {
		                return function () {
		                    ib.setOptions(boxOptions);
		                    boxText.innerHTML = locations[i][0];
		                    ib.open(map, marker);
		                    currentInfobox = marker.id;
		                    var latLng = new google.maps.LatLng(locations[i][1], locations[i][2]);
		                    map.panTo(latLng);
		                    map.panBy(0, -180);
		                    google.maps.event.addListener(ib, 'domready', function () {
		                        $('.infoBox-close').click(function (e) {
		                        	e.preventDefault();
		                            ib.close();
		                        });
		                    });
		                }
		            })(marker, i));
		        }
				
				 $('.nextmap-nav').on("click", function (e) {
			            e.preventDefault();
			            map.setZoom(14);
			            var index = currentInfobox;
			            if (index + 1 < allMarkers.length) {
			                google.maps.event.trigger(allMarkers[index + 1], 'click');
			            }
			            else {
			                google.maps.event.trigger(allMarkers[0], 'click');
			            }
			        });
			        $('.prevmap-nav').on("click", function (e) {

			            e.preventDefault();
			            map.setZoom(14);
			            if (typeof (currentInfobox) == "undefined") {
			                google.maps.event.trigger(allMarkers[allMarkers.length - 1], 'click');
			            }
			            else {
			                var index = currentInfobox;
			                if (index - 1 < 0) {
			                    google.maps.event.trigger(allMarkers[allMarkers.length - 1], 'click');
			                }
			                else {
			                    google.maps.event.trigger(allMarkers[index - 1], 'click');
			                }
			            }
			        });
			        

			        var zoomControlDiv = document.createElement('div');
			        var zoomControl = new ZoomControl(zoomControlDiv, map);
			        
			        function ZoomControl(controlDiv, map) {
			            zoomControlDiv.index = 1;
			            map.controls[google.maps.ControlPosition.RIGHT_CENTER].push(zoomControlDiv);
			            controlDiv.style.padding = '5px';
			            var controlWrapper = document.createElement('div');
			            controlDiv.appendChild(controlWrapper);
			            var zoomInButton = document.createElement('div');
			            zoomInButton.className = "mapzoom-in";
			            controlWrapper.appendChild(zoomInButton);
			            var zoomOutButton = document.createElement('div');
			            zoomOutButton.className = "mapzoom-out";
			            controlWrapper.appendChild(zoomOutButton);
			            
			            google.maps.event.addDomListener(zoomInButton, 'click', function () {
			                map.setZoom(map.getZoom() + 1);
			            });
			            google.maps.event.addDomListener(zoomOutButton, 'click', function () {
			                map.setZoom(map.getZoom() - 1);
			            });
			        }
			        
			        //Icon 값 출력
			        
			        
			        
			        var options = {
			            imagePath: 'images/',
			            styles: clusterStyles,
			            minClusterSize: 2
			        };
			        markerCluster = new MarkerClusterer(map, allMarkers, options);
			        google.maps.event.addDomListener(window, "resize", function () {
			            var center = map.getCenter();
			            google.maps.event.trigger(map, "resize");
			            map.setCenter(center);
			        });

			}
		 ,error:function(e){  //이곳의  ajax에서 에러가 나면 얼럿창으로 에러 메시지 출력
			 alert(e.responseText);
		 }
		 });
		 
		 
    
   //끝
       
        var mapZoomAttr = $('#map-main').attr('data-map-zoom');
        var mapScrollAttr = $('#map-main').attr('data-map-scroll');
        if (typeof mapZoomAttr !== typeof undefined && mapZoomAttr !== false) {
            var zoomLevel = parseInt(mapZoomAttr);
        }
        else {
            var zoomLevel = 10;
        }
        if (typeof mapScrollAttr !== typeof undefined && mapScrollAttr !== false) {
            var scrollEnabled = parseInt(mapScrollAttr);
        }
        else {
            var scrollEnabled = false;
        }
        
        //
       
        
        //Map 시작
        if(latitude != 0){
        	var map = new google.maps.Map(document.getElementById('map-main'), {
                zoom: 15,
                scrollwheel: scrollEnabled,
                center: new google.maps.LatLng(latitude, longitude), //시작 위치
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                zoomControl: false,
                mapTypeControl: false,
                scaleControl: false,
                panControl: false,
                navigationControl: false,
                streetViewControl: false,
                animation: google.maps.Animation.BOUNCE,
                gestureHandling: 'cooperative',
                styles: [{
                        "featureType": "administrative",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#444444"
                        }]
                    }
                ]
            });
        }else{
        var map = new google.maps.Map(document.getElementById('map-main'), {
            zoom: 6,
            scrollwheel: scrollEnabled,
            center: new google.maps.LatLng(37.566535, 126.97796919999996), //시작 위치
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            zoomControl: false,
            mapTypeControl: false,
            scaleControl: false,
            panControl: false,
            navigationControl: false,
            streetViewControl: false,
            animation: google.maps.Animation.BOUNCE,
            gestureHandling: 'cooperative',
            styles: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#444444"
                    }]
                }
            ]
        });
        }
        var boxText = document.createElement("div");
        boxText.className = 'map-box'
        var currentInfobox;
        var boxOptions = {
            content: boxText,
            disableAutoPan: true,
            alignBottom: true,
            maxWidth: 300,
            pixelOffset: new google.maps.Size(-140, -45),
            zIndex: null,
            boxStyle: {
                width: "260px"
            },
            closeBoxMargin: "0",
            closeBoxURL: "",
            infoBoxClearance: new google.maps.Size(1, 1),
            isHidden: false,
            pane: "floatPane",
            enableEventPropagation: false,
        };
        var markerCluster, marker, i;
        var allMarkers = [];
        var clusterStyles = [{
            url: '',
            height: 40,
            width: 40
        }];
        
        

        
    }
    var map = document.getElementById('map-main');
    if (typeof (map) != 'undefined' && map != null) {
        google.maps.event.addDomListener(window, 'load', mainMap);
    }
})(this.jQuery);