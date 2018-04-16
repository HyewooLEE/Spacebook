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

function fileSubmit(){

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


/*$(document).ready(function(){
	
	alert("111");
	
	//이미지 데이터 업로드
	var formData = new FormData($("#submitSpaceForm")[0]);
	$.ajax({
	    type : 'post',
	    url : 'submitSpaceForm',
	    data : formData,
	    processData : false,
	    contentType : false,
	    success : function(html) {
	        alert("파일 업로드하였습니다.");
	    },
	    error : function(error) {
	        alert("파일 업로드에 실패하였습니다.");
	        console.log(error);
	        console.log(error.status);
	    }
	});
	
});*/
