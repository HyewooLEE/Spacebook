var map;
var geocoder;

function initialize() {
	/*map = new GMap2(document.getElementById('map_canvas'));
	map.setCenter(new GLatLng(37.566535, 126.9779692), 15);*/
	geocoder = new GClientGeocoder();
	/*map.disableDoubleClickZoom();
	map.addControl(new GNavLabelControl());
	map.addControl(new GSmallMapControl());*/
}

// 맵정보
function addAddressToMap(response) {
	/*map.clearOverlays();*/

	place = response.Placemark[0];
	point = new GLatLng(place.Point.coordinates[1], place.Point.coordinates[0]);
	marker = new GMarker(point);
	/*map.addOverlay(marker);*/
	/*	marker.openInfoWindowHtml(
	// place.address + '<br>' +
	'<b>위도,경도:</b>' + place.Point.coordinates[1] + ","
			+ place.Point.coordinates[0] + '<br>' + '<b>주소:</b>'
			+ place.address);*/

	// 위도, 경도 입력
	 document.getElementById('map_latitude').value = place.Point.coordinates[1];
	 document.getElementById('map_longitude').value =  place.Point.coordinates[0];
	 
	 

}


// 주소
function findaddress() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullAddr = data.address; // 최종 주소 변수
			var extraAddr = ''; // 조합형 주소 변수

			// 기본 주소가 도로명 타입일때 조합한다.
			if (data.addressType === 'R') {
				// 법정동명이 있을 경우 추가한다.
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			}
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			// document.getElementById('sample3_postcode').value =
			// data.zonecode; //5자리 새우편번호 사용
			document.getElementById('space_addr1').value = fullAddr;

			findMapAdd(data.address); // 위도 경도 찾기

			// iframe을 넣은 element를 안보이게 한다.
			// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
			return false;

			// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
			document.body.scrollTop = currentScroll;
		},
		// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
		onresize : function(size) {
			element_wrap.style.height = size.height + 'px';
		},
		width : '100%',
		height : '100%'
	}).open();

}

// 주소 가지고 위도 경도 가져오기
function findMapAdd(address) {
	initialize();
	geocoder.getLocations(address, addAddressToMap);
}