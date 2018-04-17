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
var reviewPage = 1;
var reviewCurPage = 1;

function nextReview(totalReview, space_no) {
	if(reviewCurPage <= totalReview / 3) {
		reviewCurPage ++;
		reviewPage += 3;
	}
	//{startReview:reviewPage, endReview:reviewPage+2}
	var params = "space_no="+ space_no +"&startReview="+ reviewPage +"&endReview="+ (reviewPage+2);
	
	$.ajax({
		type: "get",
		url: "/Spacebook/showReview.do",
		data: params,
		cache: false,
		dataType:"json",
		success:function(result) {
			
			/*$('#review').children().remove();*/
			$('#review').html('');
			for(var i=0; i<result.data.length; i++) {
				var star = "";
				for(var j=0; j<result.data[i].rev_rate; j++) {
					star += "<i class='fa fa-star'></i>";
				}
				
				$('#review').append(
						"<div class='reviews-comments-item'>" +
						"<div class='review-comments-avatar'>" +
							"<img src='images/avatar/1.jpg'>" +
						"</div>" +
						"<div class='reviews-comments-item-text'>" + 
							"<h4><a href='#'>"+ result.data[i].mem_name + "</a></h4>" +
							"<div class='listing-rating card-popup-rainingvis' data-starrating2='"+ result.data[i].rev_rate +"'>"+
								star + 
							"</div>" +
							"<div class='clearfix'></div>" +
							"<p>"+ result.data[i].rev_note +"</p>" +
							"<span class='reviews-comments-item-date'>" +
								"<i class='fa fa-calendar-check-o'></i>"+ result.data[i].rev_writeDate +
							"</span>" +
						"</div>"+
						"</div>"
				);
			}
		}
	});	
}

function preReview(totalReview, space_no) {
	if(reviewCurPage >= totalReview / 3) {
		reviewCurPage--;
		reviewPage -= 3;
	} else {
		reviewCurPage= 1;
		reviewPage = 1;
	}
	var params = "space_no="+ space_no +"&startReview="+ reviewPage +"&endReview="+ (reviewPage+2);
	$.ajax({
		type: "get",
		url: "/Spacebook/showReview.do",
		data: params,
		cache: false,
		dataType:"json",
		success:function(result) {
			$('#review').html('');
			for(var i=0; i<result.data.length; i++) {
				var star = "";
				for(var j=0; j<result.data[i].rev_rate; j++) {
					star += "<i class='fa fa-star'></i>";
				}
				
				$('#review').append(
						"<div class='reviews-comments-item'>" +
						"<div class='review-comments-avatar'>" +
							"<img src='images/avatar/1.jpg'>" +
						"</div>" +
						"<div class='reviews-comments-item-text'>" + 
							"<h4><a href='#'>"+ result.data[i].mem_name + "</a></h4>" +
							"<div class='listing-rating card-popup-rainingvis' data-starrating2='"+ result.data[i].rev_rate +"'>"+
								star + 
							"</div>" +
							"<div class='clearfix'></div>" +
							"<p>"+ result.data[i].rev_note +"</p>" +
							"<span class='reviews-comments-item-date'>" +
								"<i class='fa fa-calendar-check-o'></i>"+ result.data[i].rev_writeDate +
							"</span>" +
						"</div>"+
						"</div>"
				);
			}
		}
	});
}


function openInquire() {
	$('.modalInquire').fadeIn();
    $("html, body").addClass("hid-body");
}

function inquireCancel() {
	inq_title = document.getElementById("inq_title").value;
	inq_note = document.getElementById("inq_note").value;
	
	$('.modalInquire').fadeOut();
    $("html, body").removeClass("hid-body");
    if(inq_title != "") {
    	inq_title = "";
    }
    
    if(inq_note != "") {
    	inq_note = "";
    }
}

function inquire() {
	inq_title = document.getElementById("inq_title").value;
	inq_note = document.getElementById("inq_note").value;
	
	if(inq_title == "") {
		swal("제목을 입력해주세요.");
		return;
	}
	
	if(inq_note == "") {
		swal("문의 내용을 작성해주세요.");
		return;
	}
	spaceInquireForm.submit();
}