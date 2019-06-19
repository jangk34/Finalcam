
var idcnt = 0;

const func = {
			idChk : function() {
				if (tagSelect.usrID.value == "") {
					alert("아이디를 입력해주세요.");
					idcnt = 0;
					return false;
				}
				func.idChkAjax(tagSelect.usrID.value);
			},
			idChkAjax : function(usrID) {
				$.ajax({
					url : '/idChk.do',
					method : 'POST',
					data : {
						'usrID' : usrID
					},
					success : function(data) {
						if (data >= 1) {
							alert("중복된 아이디입니다.");
							tagSelect.usrID.value = "";
							idcnt = 0;
						} else if (data == 0) {
							alert("사용가능한 아이디 입니다.");
							idcnt = 1;
						}
					}
				})
			}
		}