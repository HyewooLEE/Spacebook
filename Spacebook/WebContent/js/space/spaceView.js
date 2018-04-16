function checkReserve() {
	reserve_name = document.getElementById("reserve_name").value;
	reserve_email = document.getElementById("reserve_email").value;
	reserve_phone = document.getElementById("reserve_phone").value;
	    
	if(reserve_name == "") {
		swal("예약자 성함을 입력해주세요");
		return;
	}
	if(reserve_email == "") {
		swal("예약자 이메일을 입력해주세요");
		return;
	}
	if(reserve_phone == "") {
		swal("예약자 전화번호를 입력해주세요");
		return;
	}
	reserve();
}

function reserve() {
	$('.modal2').fadeIn();
    $("html, body").addClass("hid-body");
    
    payment_name = document.getElementById("payment_name");
    payment_email = document.getElementById("payment_email");
    payment_phone = document.getElementById("payment_phone");
    payment_Date = document.getElementById("payment_Date");
    payment_quantity = document.getElementById("payment_quantity");
    payment_message = document.getElementById("payment_message");

    payment_name.innerHTML = "예약자 : "+ document.getElementById("reserve_name").value;
    payment_email.innerHTML = "이메일 : "+ document.getElementById("reserve_email").value;
    payment_phone.innerHTML = "연락처 : "+ document.getElementById("reserve_phone").value;
    payment_Date.innerHTML = "예약 날짜 : "+ document.getElementById("reserve_startDate").value +" ~ "+ document.getElementById("reserve_endDate").value;
    payment_quantity.innerHTML = "인원수 : "+ document.getElementById("reserve_quantity").value;
    
    if(document.getElementById("reserve_message").value != "") {
    	payment_message.innerHTML = "남김말 : "+ document.getElementById("reserve_message").value;	
    } else {
    	payment_message.innerHTML = " ";
    }
}

function cancel() {
	$('.modal2').fadeOut();
    $("html, body").removeClass("hid-body");
}

function addQuantity() {
	var quantity = document.getElementById("reserve_quantity");
	quantity.value ++;
}

function subQuantity() {
	var quantity = document.getElementById("reserve_quantity");
	if(quantity.value == 1) {
		swal("1명 이상 선택해주세요.","");
	} else {
		quantity.value --;
	}
}

function payment() {
	payment_name = document.getElementById("payment_name").value;
    payment_email = document.getElementById("payment_email").value;
    payment_phone = document.getElementById("payment_phone").value;
    payment_quantity = document.getElementById("payment_quantity").value;
    payment_message = document.getElementById("payment_message").value;
    pay_method = document.getElementById("pay_method").value;
    space_category = document.getElementById("space_category").value;
    spcae_name = document.getElementById("space_name").value;
    spcae_sum = document.getElementById("space_sum").value;
	
    if(pay_method == "") {
    	swal("결제 방식을 선택해주세요.","");
    } else {
    	IMP.init('imp78921561');
    	 
    	IMP.request_pay({
    	    pg : ' html5_inicis', // version 1.1.0부터 지원.
    	    pay_method : pay_method,
    	    merchant_uid : 'merchant_' + new Date().getTime(),
    	    name : (space_category) + spcae_name,
    	    amount : spcae_sum,
    	    buyer_email : payment_email,
    	    buyer_name : payment_name,
    	    buyer_tel : payment_phone,
    	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
    	}, function(rsp) {
    	    if ( rsp.success ) {
    	        var msg = '결제가 완료되었습니다.';
    	        msg += '고유ID : ' + rsp.imp_uid;
    	        msg += '상점 거래ID : ' + rsp.merchant_uid;
    	        msg += '결제 금액 : ' + rsp.paid_amount;
    	        msg += '카드 승인번호 : ' + rsp.apply_num;
    	    } else {
    	        
    	    }
    	});
    }
}

function reviewSubmit() {
	var mem_name = document.getElementById("mem_name").value;
	var mem_email = document.getElementById("mem_email").value;
	var comm_note = document.getElementById("rev_note").value;
	
	if(mem_name == "") {
		swal("리뷰 작성자 이름을 입력해주세요");
		return;
	}
	if(mem_email == "") {
		swal("리뷰 작성자 이메일을 입력해주세요");
		return;
	}
	if(rev_note == "") {
		swal("리뷰 내용 입력해주세요");
		return;
	}
	spaceReviewForm.submit();
}
/*$(function(){
	$("#preReview").click(function(){
		$.ajax({
			type: "POST",
			url: "/spaceView.do",
			data: {name:"john", location:"boston"},
			cache: false,
			encoding: 'UTF-8',
			success:function(result) {
				$("#results").append(result);
			}
		});
	});
	
	$("#nextReview").click(function(){
		$.ajax({
			type: "POST",
			url: "/spaceView.do",
			data: {name:"john", location:"boston"},
			cache: false,
			encoding: 'UTF-8',
			success:function(result) {
				$("#results").append(result);
			}
		});
	});
});*/

function openInquire() {
	$('.modalInquire').fadeIn();
    $("html, body").addClass("hid-body");
}

function inquireCancel() {
	inq_sub = document.getElementById("inq_sub").value;
	inq_note = document.getElementById("inq_note").value;
	
	$('.modalInquire').fadeOut();
    $("html, body").removeClass("hid-body");
    if(inq_sub != "") {
    	inq_sub = "";
    }
    
    if(inq_note != "") {
    	inq_note = "";
    }
}

function inquire() {
	inq_sub = document.getElementById("inq_sub").value;
	inq_note = document.getElementById("inq_note").value;
	
	if(inq_sub == "") {
		swal("제목을 입력해주세요.");
		return;
	}
	
	if(inq_note == "") {
		swal("문의 내용을 작성해주세요.");
		return;
	}
	spaceInquireForm.submit();
}