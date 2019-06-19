<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="poly.dto.MainDTO"%>
<%
	List<MainDTO> mList = (List<MainDTO>) request.getAttribute("mList");
	MainDTO mDTO = (MainDTO) request.getAttribute("mDTO");
%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Free responsive business website template</title>
<link rel="stylesheet" href="/resource/css/components.css">
<link rel="stylesheet" href="/resource/css/icons.css">
<link rel="stylesheet" href="/resource/css/responsee.css">
<link rel="stylesheet" href="/resource/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="/resource/owl-carousel/owl.theme.css">
<!-- CUSTOM STYLE -->
<link rel="stylesheet" href="/resource/css/template-style.css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/resource/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/resource/js/jquery-ui.min.js"></script>
</head>
<body class="size-1140">
	<!-- TOP NAV WITH LOGO -->
	<header>
		<nav>
			 <div class="line">
               <div class="top-nav">              
                  <div class="logo logo-small">
                         <a href="home.do"><strong>캠핑고</strong></a>
                  </div>                  
                  <p class="nav-text">매뉴 목록</p>
                  <div class="top-nav s-12 l-5">h
                     <ul class="right top-ul chevron">
                        <li><a onclick = "pageMove.singleUrlParam('cam','glamcamlist')">캠핑지 목록</a>
                        </li>
                     </ul>
                  </div>
                  <ul class="s-12 l-2">
                     <li class="logo hide-s hide-m">
                        <a onclick = "homeMove.aParam('home')"><strong>캠핑고</strong></a>
                     </li>
                  </ul>
                  <div class="top-nav s-12 l-5">
                     <ul class="top-ul chevron">
                         <% if(session.getAttribute("email") ==null) { %>
                        <li><a onclick = "pageMove.singleUrlParam('main','login')">로그인</a>
                        <%}else{ %>
                           <li><a href="logout.do
                           ">로그아웃</a>
                        <%} %>
                        </li>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<section>
		<div id="head">
			<div class="line">
				<h1>1:1문의</h1>
			</div>
		</div>
		<div id="content" class="left-align contact-page">
			<div class="line">
				<div class="margin">
					<div class="s-12 l-6">
						<h2>Vision Design - KEUN Company</h2>
						<adOdress>
							<p>
								<i class="icon-home icon"></i> 서울시 강남구 강남대로 106길
							</p>
							<p>
								<i class="icon-globe_black icon"></i> 대한민국 - 서울
							</p>
							<p>
								<i class="icon-mail icon"></i> jangk34@naver.com
							</p>
						</address>
						<br />
						<h2>Social</h2>
						<p>
							<i class="icon-facebook icon"></i> <a
								href="https://www.facebook.com/pages/Vision-Design-graphic-ZOO/154664684553091">Vision
								Design - graphic KEUN</a>
						</p>
						<p>
							<i class="icon-facebook icon"></i> <a
								href="https://www.facebook.com/myresponsee">Responsee</a>
						</p>
						<p class="margin-bottom">
							<i class="icon-twitter icon"></i> <a
								href="https://twitter.com/MyResponsee">Responsee</a>
						</p>
					</div>
					<div class="s-12 l-6"> 
					 <!--/ing/mailSending.do ? setfrom="adsas  --> 
						<h2>1:1 문의할 내용</h2>
						<form class="customform" action="/inq/mailSending.do" method="post">
							<div class="s-12 l-7">
								<input name="setfrom" placeholder="고객님 이메일 주소" title="Your e-mail"
									type="text" /> <!-- 보내는 사람 메일 -->
							</div>
							<div class="s-12 l-7">
								<input name="title" placeholder="제목" title="title"
									type="text" /> <!-- 제목 -->
							</div>
							<div class="s-12">
								<textarea placeholder="문의할 내용" name="content" rows="5"></textarea>
							</div> <!-- 문의할 내용 -->
								<input type="hidden" name="tomail" placeholder="받는사람" title="받는 사람" value="superdeveloper2018@gmail.com" />
								<!-- 받는 사람 히든처리 -->
							<div class="s-12 m-6 l-4">
							<input type ="submit" value="메일 전송" class="btn btn-warning">
							
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	<!-- 	 googleMAP 
		<div id="map-block">
			<iframe
				src="https://www.google.com/maps/place/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EC%84%B1%EB%B6%81%EA%B5%AC+%EC%84%B1%EB%B6%81%EB%8F%99+%EB%8C%80%EC%82%AC%EA%B4%80%EB%A1%9C+1/@37.5961577,126.9826974,17z/data=!3m1!4b1!4m5!3m4!1s0x357cbd322069d80f:0x480b71e4e93a3de8!8m2!3d37.5961577!4d126.9848861"
				width="100%" height="450" frameborder="0" style="border: 0"></iframe>
		</div> -->
		
		
		<!-- daum map -->
	
		<div id="map" style="width:100%;height:400px; margin:auto;"></div>
		</script> 


      
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7047c4bc384caf922e8f2bbcdc362d2f"></script>
    
 <script>
      
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
 mapOption = { 
     center: new daum.maps.LatLng(37.503247, 127.026827), // 지도의 중심좌표
     level: 3 // 지도의 확대 레벨
 };

var map = new daum.maps.Map(mapContainer, mapOption);

//마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(37.503247, 127.026827); 

//마커를 생성합니다
var marker = new daum.maps.Marker({
 position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">KEUN COMPANY <br>강남구 강남대로 106길 </br> <a href="http://map.daum.net/link/map/KEUN COMPANY,37.503247, 127.026827" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/KEUN COMPANY,37.503247, 127.026827" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
 iwPosition = new daum.maps.LatLng(37.503247, 127.026827); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
 position : iwPosition, 
 content : iwContent 
});

//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
		
		<div id="fourth-block">
			<div class="line">
				<div id="news-carousel" class="owl-carousel owl-theme">
					<div class="item">
						<h2>Amazing responsive template</h2>
						<p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit, sed diam nonummy nibh euismod
							tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
							enim ad minim veniam, quis nostrud exerci tation ullamcorper
							suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
					</div>
					<div class="item">
						<h2>Responsive components</h2>
						<p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit, sed diam nonummy nibh euismod
							tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
							enim ad minim veniam, quis nostrud exerci tation ullamcorper
							suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
					</div>
					<div class="item">
						<h2>Retina ready</h2>
						<p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit, sed diam nonummy nibh euismod
							tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
							enim ad minim veniam, quis nostrud exerci tation ullamcorper
							suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- FOOTER -->
	<footer>
		<div class="line">
			<div class="s-12 l-6">
				<p>Copyright 2019, Vision Design - graphic KEUN</p>
			</div>
			<div class="s-12 l-6">
				<p class="right">
					<a class="right" href="http://www.myresponsee.com"
						title="Responsee - lightweight responsive framework">Design
						and coding by ChangKeunJang</a>
				</p>
			</div>
		</div>
	</footer>
	<script type="text/javascript" src="js/responsee.js"></script>
	<script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript">
         jQuery(document).ready(function($) {  
           var owl = $('#news-carousel');
           owl.owlCarousel({
              nav: true,
              dots: false,
              items: 1,
              loop: true,
              navText: ["&#xf007","&#xf006"],
              autoplay: true,
              autoplayTimeout: 4000
           });
         });
         
         
 </script>
 
<%-- 
	<script>

<!-- function geoFindMe() {
var output = document.getElementById("out");

if (!navigator.geolocation){
 output.innerHTML = "<p>사용자의 브라우저는 지오로케이션을 지원하지 않습니다.</p>";
 return;
}

function success(position) {
 var latitude  = position.coords.latitude;
 var longitude = position.coords.longitude;

 output.innerHTML = '<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>';

 var img = new Image();
 
.src = "http://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";

 output.appendChild(img);
};

function error() {
 output.innerHTML = "사용자의 위치를 찾을 수 없습니다.";
};

output.innerHTML = "<p>Locating…</p>";

navigator.geolocation.getCurrentPosition(success, error);
}
</script> -->


	<div style="width: 100%">
		<div id="map" style="width: 100%; height: 100%;"></div>
	</div>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c09c0f4cae21431cb83a41042bbed743&libraries=services"></script>

	<script>

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch("<%=mDTO.getAddress()%>", function(result, status) { 

//정상적으로 검색이 완료됐으면 
if (status === daum.maps.services.Status.OK) {

var coords = new daum.maps.LatLng(result[0].y, result[0].x);


//결과값으로 받은 위치를 마커로 표시합니다
var marker = new daum.maps.Marker({
map: map,
position: coords
});

//인포윈도우로 장소에 대한 설명을 표시합니다
var infowindow = new daum.maps.InfoWindow({
content: '<div style="width:150px;text-align:center;padding:6px 0;">"<%=mDTO.getName()%>
		"</div>'
										});
								infowindow.open(map, marker);

								//지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);

								map
										.addOverlayMapTypeId(daum.maps.MapTypeId.TRAFFIC);

							}
						});
	</script>

	<script type="text/javascript">
		/* v3. script */
		if ($('#topMenu').size() > 0 && $('#scroller').size() > 0) {
			var totalWidth = 0;
			var lists = $('#scroller li');

			lists.each(function(index) {
				totalWidth += $(this).width();
			});
			$('#scroller').width(totalWidth + lists.length);

			var scrollOption = {
				snap : 'li',
				scrollX : true,
				scrollY : false,
				eventPassthrough : true
			};
			if (navigator.userAgent.match(/iphone/i)
					|| navigator.userAgent.match(/ipad/i)) {
				scrollOption.useTransform = false;
			}
			iscroll = new IScroll('#topMenu', scrollOption);
			iscroll.on('scrollEnd', actArrw);
			$('#scroller-left,#scroller-right').click(
					function() {
						var newXPos;
						if ($(this).hasClass("scroller-arr-left")) {
							newXPos = iscroll.currentPage.pageX - 3;
							newXPos = newXPos < 0 ? 0 : newXPos;
							iscroll.goToPage(newXPos, 0);
						} else {
							newXPos = iscroll.currentPage.pageX + 3;
							newXPos = newXPos <= iscroll.pages.length ? newXPos
									: iscroll.pages.length;
							iscroll.goToPage(newXPos, 0);
						}
					});
		}

		var coupangWrap = $("#coupangWrap"), sectionGroup = $("#whatsnewList"), sectionList = $("#whatsnew-section-list"), sectionTitle = $("#whatsnew-all-title");

		$("#whatsnewAll").on("click", function(e) {
			e.preventDefault();

			coupangWrap.addClass("showWhatsnew");
			sectionGroup.css("height", "auto");
			sectionList.children().css("position", "static");

			sectionGroup[0].opts.stopAnimation();

			sectionTitle.appendTo(coupangWrap);
			sectionGroup.appendTo(coupangWrap);
		});

		$("#whatsnew-all-close").on("click", function(e) {
			e.preventDefault();

			coupangWrap.removeClass("showWhatsnew");
			$(window).scrollTop(0);
			sectionList.children().css("position", "absolute");

			$("#whatsnew-section").append(sectionGroup);
			sectionTitle.insertBefore(sectionGroup);
			sectionGroup.height($('.whatsnew-deal-unit').outerHeight(true));

			sectionGroup[0].opts.startAnimation();
		});
	</script> --%>
</body>
 <%@ include file="/WEB-INF/view/jscss.jsp" %>
</html>