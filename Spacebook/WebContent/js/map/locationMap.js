    var map;
    var geocoder;

    function initialize() {
      map = new GMap2(document.getElementById('map_canvas'));
      map.setCenter(new GLatLng(37.566535,126.9779692), 15);
      geocoder = new GClientGeocoder();
      map.disableDoubleClickZoom();
	  map.addControl(new GNavLabelControl());     
	  map.addControl(new GSmallMapControl());
    }

// 맵정보
    function addAddressToMap(response) {
      map.clearOverlays();
      if (!response || response.Status.code != 200) {
        alert("Sorry, 주소를 확인해 주세요!!");
      } else {
        place = response.Placemark[0];
        point = new GLatLng(place.Point.coordinates[1],
                            place.Point.coordinates[0]);
        marker = new GMarker(point);
        map.addOverlay(marker);
        marker.openInfoWindowHtml(
//			place.address + '<br>' +
        '<b>위도,경도:</b>' + place.Point.coordinates[1] + "," + place.Point.coordinates[0] + '<br>' +
        '<b>주소:</b>' + place.address);
//        '<b>Status Code:</b>' + response.Status.code + '<br>' +
//       '<b>Status Request:</b>' + response.Status.request + '<br>' +
//        '<b>Country code:</b> ' + place.AddressDetails.Country.CountryNameCode);

      }
    }

    function showLocation() {
      var address = document.forms[0].q.value;
      geocoder.getLocations(address, addAddressToMap);
    }

    function findLocation(address) {
      document.forms[0].q.value = address;
      showLocation();
    }
