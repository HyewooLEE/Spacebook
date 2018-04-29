function checkContacts() {
	con_title = document.getElementById("con_title").value;
	con_note = document.getElementById("con_note").value;
	    
	if(con_title == "") {
		swal("문의 제목을 입력해주세요.");
		return;
	}
	if(con_note == "") {
		swal("문의 할 내용을 입력해주세요.");
		return;
	}
	// 메일 발송 처리
	$.ajax({
		type: "GET",
		url: "/Spacebook/contacts.do",
		data: {
			con_title: con_title,
			con_note : con_note
		},
		cache: false,
		dataType:"json",
		success:function(result) {
			if(result.data == 1) {
				closeContacts();
				document.getElementById("con_title").value = "";
				document.getElementById("con_note").value = "";
				swal("메일이 발송되었습니다.");
			} else {
				closeContacts();
				document.getElementById("con_title").value = "";
				document.getElementById("con_note").value = "";
				swal("메일 발송이 실패하였습니다. 처리 중에 있으니, 잠시뒤에 다시 발송 부탁드립니다.");
			}		
		}
	});
}

function openContacts() {
	$('.contactsModal').fadeIn();
}

function closeContacts() {
	$('.contactsModal').fadeOut();
}