function checkDeleteRent(rent_no) {
	swal({
		  title: "예약 취소 요청을 하시겠습니까?",
		  text: "요청을 하시게 되면 다시 복구 할수 없습니다.",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  deleteMyRent(rent_no);
			  swal("예약 취소가 되었습니다.", {
		      icon: "success",
		    }).then(function(){
			    window.location.href = '/Spacebook/myRentList.do';
		    });
		  } else {
			  return;
		  }
		});
}

function deleteMyRent(rent_no) {
	var params = "rent_no="+ rent_no;
	
	$.ajax({
		type: "get",
		url: "/Spacebook/deleteMyRent.do",
		data: params,
		cache: false
	});
}