const pageMove = {
	//	key : value,
		singleUrlParam : function(url,param){
			location.href="/"+url+"/"+param+".do"
		}
}

const homeMove = {
		aParam : function(url) {
			location.href="/"+url+".do"
		}
}
