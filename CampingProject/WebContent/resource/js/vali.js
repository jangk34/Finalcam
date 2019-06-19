/**
 * 
 */	

const tagSelect = {
		usrID : document.getElementById("usrID"),
		idChk :  document.getElementById("idChk"),
		usrName : document.getElementById("usrName"),
		usrHPNum : document.getElementById("usrHPNum"),
		usrEmail : document.getElementById("usrEmail"),
		param : function(param) {
			var ab = param;
			tagSelect.ab.value;
		}
}

		var blank = /[\s]/gi;
		var special = /[.`~!@\#$%<>^&*\()\-=+_\’:;]/gi;
		var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/gi;
	
		const valiError = {
				blank : function() {
					alert("공백은 사용할 수 없습니다.")
					return false;
				},
				special : function() {
					alert("특수문자는 사용할 수 없습니다.")
					return false;
				},
				korean : function() {
					alert("한글은 사용할 수 없습니다.")
					return false;
				},
				
		}
		
		/*const check = {
				idCheck : function() {
					usrID = tagSelect.usrID.value;
				check.idCheckProc(usrID);
		},
			idCheckProc : function(usrID) {
			if(blank.test(usrID) == true)
			{
				tagSelect.usrID.value = "";
				valiError.blank()
			}
			
			if(special.test(usrID) == true)
			{
				tagSelect.usrID.value = "";
				valiError.special()
			}
			
			if(korean.test(usrID) == true)
			{
				tagSelect.usrID.value = "";
				valiError.korean()
			}
		}*/
		const check = {
				valiCheck : function(param) {
					param2 = tagSelect.param(param);
					check.paramProc(param2);
				},
				paramProc : function(param2) {
					if(blank.test(param2) == true)
						{
						tagSelect.param.value == "";
						valiError.blank()
						}
					if(korean.test(param2) == true)
						{
						tagSelect.param.value == "";
						valiError.korean()
						}
					if(special.test(param2) == true)
						{
						tagSelect.param.value == "";
						valiError.special()
						}
				}
		}
		
		
