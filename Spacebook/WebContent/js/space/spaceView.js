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
    
    document.getElementById("pay_name").value = $('#reserve_name').val();
    document.getElementById("pay_email").value = $('#reserve_email').val();
    document.getElementById("pay_phone").value = $('#reserve_phone').val();
    document.getElementById("pay_startDate").value = $('#reserve_startDate').val();
    document.getElementById("pay_endDate").value = $('#reserve_endDate').val();
    document.getElementById("pay_quantity").value = $('#reserve_quantity').val();
    document.getElementById("pay_message").value = $('#reserve_name').val();
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

function payment(pay_category, pay_spaceName, space_no, mem_no) {
	var pay_sum = $('#pay_sum').text();
	var pay_name = $('#pay_name').val();
	var pay_email = $('#pay_email').val();
	var pay_phone = $('#pay_phone').val();
	var pay_startDate = $('#pay_startDate').val();
	var pay_endDate = $('#pay_endDate').val();
	var pay_quantity = $('#pay_quantity').val();
	var pay_message = $('#pay_message').val();
    var pay_method = $('#pay_method').val();
	
    if(pay_method == "") {
    	swal("결제 방식을 선택해주세요.","");
    } else {
    	IMP.init('imp78921561');
    	 
    	IMP.request_pay({
            pg : 'html5_inicis', //ActiveX 결제창은 inicis를 사용
            pay_method : pay_method, //card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
            merchant_uid : 'merchant_' + new Date().getTime(), //상점에서 관리하시는 고유 주문번호를 전달
            name : '('+ pay_category +')'+ pay_spaceName,
            amount : pay_sum,
            buyer_email : pay_email,
            buyer_name : pay_name,
            buyer_tel : pay_phone, //누락되면 이니시스 결제창에서 오류
            buyer_addr : '서울특별시 강남구 삼성동',
            buyer_postcode : '123-456'
        }, function(rsp) {
            if ( rsp.success ) {
            	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
            	jQuery.ajax({
            		url: "/Spacebook/showReview.do", //cross-domain error가 발생하지 않도록 주의해주세요
            		type: 'GET',
            		dataType: 'json',
            		data: {
        	    		imp_uid : rsp.imp_uid,
        	    		space_no : space_no,
        	    		mem_no : mem_no,
        	    		rent_name : pay_name,
        	    		rent_email : pay_email,
        	    		rent_phone : pay_phone,
        	    		pay_name : pay_name,
        	    		rent_note : pay_message,
        	    		rent_pay_method : pay_method
        	    		
        	    		
        	    		//기타 필요한 데이터가 있으면 추가 전달
            		}
            	}).done(function(data) {
            		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
            		if ( everythings_fine ) {
            			var msg = '결제가 완료되었습니다.';
            			msg += '\n고유ID : ' + rsp.imp_uid;
            			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
            			msg += '\n결제 금액 : ' + rsp.paid_amount;
            			msg += '카드 승인번호 : ' + rsp.apply_num;
            			
            			alert(msg);
            		} else {
            			//[3] 아직 제대로 결제가 되지 않았습니다.
            			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            		}
            	});
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                
                alert(msg);
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
							"<img src='"+ result.data[i].memberVO.mem_Img +"'>" +
						"</div>" +
						"<div class='reviews-comments-item-text'>" + 
							"<h4><a href='#'>"+ result.data[i].memberVO.mem_Name + "</a></h4>" +
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
	if(reviewCurPage >= totalReview / 3 && totalReview % 3 == 0) {
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
							"<img src='"+ result.data[i].memberVO.mem_Img +"'>" +
						"</div>" +
						"<div class='reviews-comments-item-text'>" + 
							"<h4><a href='#'>"+ result.data[i].memberVO.mem_Name + "</a></h4>" +
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

function favorite(space_no, mem_no) {
	var params = "space_no="+ space_no +"&mem_no="+ mem_no;
	$.ajax({
		type: "get",
		url: "/Spacebook/selectFavorite.do",
		data: params,
		cache: false,
		dataType:"json",
		success:function(result) {
			if(result.data == 1) {
				$("#heart").attr('class','fa fa-heart');
			} else if(result.data == 0) {
				$("#heart").attr('class','fa fa-heart-o');
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