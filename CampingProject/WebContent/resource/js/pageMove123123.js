/**
 * 
 */

const pageMove = {
	noitce:function(param){
		location.href="/notice/"+param+".do"
	},
	usr:function(param){
		location.href="/usr/"+param+".do"
	},
	single:function(param){
		location.href="/"+param+".do"
	},
	fb:function(param){
		location.href="/freeboard/"+param+".do"
	},
	singleUsrParam:function(url,param){
		location.href="/usr/"+url+".do?usrID="+param
	},
	singleFbParam:function(url,param){
		location.href="/freeboard/"+url+".do?FBoNo="+param
	},
	find:function(url){
		location.href="/find/"+url+".do"
	}
}