<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 다음지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 구글지도 -->
<!-- <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=AIzaSyDJW3_aez5Ahaxl88X9ZNR5QB2JMa1lcs0" type="text/javascript"></script> -->
<!-- <script src="http://maps.google.com/maps/api/js?key=AIzaSyDwJSRi0zFjDemECmFl9JtRj1FY7TiTRRo" type="text/javascript"></script> -->
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=AIzaSyDwJSRi0zFjDemECmFl9JtRj1FY7TiTRRo" type="text/javascript"></script>
<!-- 주소찾기 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/map/findMap.js" ></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/map_infobox.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/markerclusterer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/maps.js"></script> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/map/locationMap.js" ></script> --%>

<script>
var file1 = document.querySelector('#space_img1'); 
var file2 = document.querySelector('#space_img2');
var file3 = document.querySelector('#space_img3'); 
var file4 = document.querySelector('#space_img4'); 
var file5 = document.querySelector('#space_img5'); 
var file6 = document.querySelector('#space_img6'); 
var file7 = document.querySelector('#space_img7'); 

file1.onchange = function () {
    var fileList = file1.files;

    // 읽기
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);

    //로드 한 후
    reader.onload = function  () {
        document.querySelector('#space_img1_src').src = reader.result ;
        document.getElementById("img1").style.display = "block";
        document.getElementById("text1").style.display = "none";
    };
};


file2.onchange = function () {
    var fileList = file2.files ;
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);
    reader.onload = function  () {
        document.querySelector('#space_img2_src').src = reader.result ; 
        document.getElementById("img2").style.display = "block";
        document.getElementById("text2").style.display = "none";
    };
}; 

file3.onchange = function () {
    var fileList = file3.files ;
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);
    reader.onload = function  () {
        document.querySelector('#space_img3_src').src = reader.result ; 
        document.getElementById("img3").style.display = "block";
        document.getElementById("text3").style.display = "none";
    };
}; 

file4.onchange = function () {
    var fileList = file4.files ;
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);
    reader.onload = function  () {
        document.querySelector('#space_img4_src').src = reader.result ;
        document.getElementById("img4").style.display = "block";
        document.getElementById("text4").style.display = "none";
    };
}; 

file5.onchange = function () {
    var fileList = file5.files ;
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);
    reader.onload = function  () {
        document.querySelector('#space_img5_src').src = reader.result ; 
        document.getElementById("img5").style.display = "block";
        document.getElementById("text5").style.display = "none";
    };
}; 

file6.onchange = function () {
    var fileList = file6.files ;
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);
    reader.onload = function  () {
        document.querySelector('#space_img6_src').src = reader.result ; 
        document.getElementById("img6").style.display = "block";
        document.getElementById("text6").style.display = "none";
    };
}; 

file7.onchange = function () {
    var fileList = file7.files ;
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);
    reader.onload = function  () {
        document.querySelector('#space_img7_src').src = reader.result ;
        document.getElementById("img7").style.display = "block";
        document.getElementById("text7").style.display = "none";
    };
}; 
</script>


<script>
function addQuantity() {
	var space_peo_count = document.getElementById("space_peo_count");
	space_peo_count.value ++;
}

function subQuantity() {
	var space_peo_count = document.getElementById("space_peo_count");
	if(space_peo_count.value == 1) {
	} else {
		space_peo_count.value --;
	}
}

function spaceSubmit(){

	//필수항목 체크 alert
    space_name = document.getElementById("space_name").value;
	space_addr1 = document.getElementById("space_addr1").value;
	space_addr2 = document.getElementById("space_addr2").value;
	space_intro1 = document.getElementById("space_intro1").value;
	space_intro2 = document.getElementById("space_intro2").value;
	space_img1 = document.getElementById("space_img1").value;
	space_phone = document.getElementById("space_phone").value;
	space_open = document.getElementById("space_open").value;
	space_close = document.getElementById("space_close").value;
	space_sum = document.getElementById("space_sum").value;
	space_bank = document.getElementById("space_bank").value;
	space_account = document.getElementById("space_account").value;
	space_depositor = document.getElementById("space_depositor").value;
	
	if(space_name == "") {
		swal("공간명을 입력해주세요.");
		return false;
	}
	else if(space_addr1 == "") {
		swal("주소를 입력해주세요.");
		return false;
	}
	else if(space_addr2 == "") {
		swal("상세주소를 입력해주세요.");
		return false;
	}
	else if(space_intro1 == "") {
		swal("한줄소개를 입력해주세요.");
		return false;
	}
	else if(space_intro2 == "") {
		swal("상세소개를 입력해주세요.");
		return false;
	}
	else if(space_img1 == "") {
		swal("공간이미지를 첨부해주세요.");
		return false;
	}
	else if(space_phone == "") {
		swal("연락처를 입력해주세요.");
		return false;
	}
	else if(space_open == "") {
		swal("운영시간을 입력해주세요.");
		return false;
	}
	else if(space_close == "") {
		swal("운영시간을 입력해주세요.");
		return false;
	}
	else if(space_sum == "") {
		swal("일일 대여비용을 입력해주세요.");
		return false;
	}
	else if(space_bank == "") {
		swal("결제정보를 입력해주세요.");
		return false;
	}
	else if(space_account == "") {
		swal("결제정보를 입력해주세요.");
		return false;
	}
	else if(space_dispositor == "") {
		swal("결제정보를 입력해주세요.");
		return false;
	}
	
}
</script>

<c:if test="${spaceDetail.space_category !='' && spaceDetail.space_category != null && spaceDetail.space_category ne null}">
<script>
 $(document).ready(function(){
   var filter = "${spaceDetail.space_category }";
   var text =$("option[value=${spaceDetail.space_category}]").html();
   $("option[value=${spaceDetail.space_category}]").attr("selected","selected")
   $("#submitSpaceForm > div:nth-child(2) > div.custom-form > div:nth-child(1) > div > span > div.select > div").html(text);
}); 
</script>
</c:if> 	
<c:if test="${spaceDetail.space_bank !='' && spaceDetail.space_bank != null && spaceDetail.space_bank ne null}">
<script>
 $(document).ready(function(){
   var filter = "${spaceDetail.space_bank }";
   var text =$("option[value=${spaceDetail.space_bank}]").html();
   $("option[value=${spaceDetail.space_bank}]").attr("selected","selected")
   $("#submitSpaceForm > div:nth-child(6) > div.custom-form > div:nth-child(2) > div > span > div.select > div").html(text);   
}); 
</script>
</c:if> 	