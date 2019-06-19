jQuery(document).ready(function($) {
	'use strict';
/*----------------------------------------------------------------------------*/
/*	1.	glamcamList
/*----------------------------------------------------------------------------*/
    var pagenum = 0
	$.ajax({
		url: "http://localhost:8080/cam/glamcamvalue.do",
		type: "POST",
		data : {
			'pagenum' : pagenum
		},
		success: function(data){
			var contents="";
			var paging=""; 
			console.log("data :" + data );
			//
			contents +='<div> class="tile s-12 m-6 l-4"'
			contents +='style="width: 30%; height: 250px; margin-right: 2%">'
			contents +='<img src="http://www.blueb.co.kr/SRC2/_image/s_01.jpg" />'
			contents +='<div class="text">'
			contents +='<h1>'
			contents +='<a onclick="pageMove.singleUrlParam("cam","glamcamDetail")">안녕하세요</a>'
			contents +='</h1>'
			contents +='<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>'
			contents +='<p class="animate-text">Bacon ipsum dolor amet pork bellytri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken.</p>'
			contents +='<div class="dots">'
			contents +='</div>'
			contents +='</div>'
			contents +='</div>'
			//
			var startPage = Number(data.paging.startPage);
			var endPage = Number(data.paging.endPage);
			var pagenum = Number(data.paging.pagenum);
			var i = 0;
			
			
			$("#glamcamvalue").html(contents);
			
		}
	});
});
/*----------------------------------------------------------------------------*/
/*	2.	glamcamList page
/*----------------------------------------------------------------------------*/
function page(i){
	if (i==null) {
		i = 1;
	}
	var pagenum = i;
	$.ajax({
		url: "http://localhost:8080/cam/glamcamvalue.do",
		type: "POST",
		data : {
			'pagenum' : pagenum
		},
		success: function(data){
			var contents_left="";
			var contents_right="";
			var paging="";
			//
			//
			contents +='<div> class="tile s-12 m-6 l-4"'
			contents +='style="width: 30%; height: 250px; margin-right: 2%">'
			contents +='<img src="http://www.blueb.co.kr/SRC2/_image/s_01.jpg" />'
			contents +='<div class="text">'
			contents +='<h1>'
			contents +='<a onclick="pageMove.singleUrlParam("cam","glamcamDetail")">안녕하세요</a>'
			contents +='</h1>'
			contents +='<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>'
			contents +='<p class="animate-text">Bacon ipsum dolor amet pork bellytri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken.</p>'
			contents +='<div class="dots">'
			contents +='</div>'
			contents +='</div>'
			contents +='</div>'
			//
			//
			var startPage = Number(data.paging.startPage);
			var endPage = Number(data.paging.endPage);
			var pagenum = Number(data.paging.pagenum);
			var i = 0;
		}
	});
}
/*----------------------------------------------------------------------------*/
/*	5.	Notice Detail
/*----------------------------------------------------------------------------*/
/*function notice_seq(i) {
	$.ajax({
		url: "/home/NoticeDetail.do",
		type: "POST",
		data : {
			'notice_seq' : i
		},
		success: function(data){
			var detail="";
		}
	});
	
}*/
