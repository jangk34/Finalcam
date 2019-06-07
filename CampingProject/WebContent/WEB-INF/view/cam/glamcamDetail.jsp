<%@page import="poly.dto.RestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>4
     <% RestDTO cDTO = (RestDTO)request.getAttribute("cDTO"); %>
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
      <link rel="stylesheet" href="/resource/css/mouseover.css"> 
      <link rel="stylesheet" href="/resource/css/template-style.css"> 
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
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
                        <li><a onclick = "pageMove.singleUrlParam('autocam','list')">오토캠핑</a>
                        </li>
                        <li><a onclick = "pageMove.singleUrlParam('glamcam','list')">글램핑</a>
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
                        <li><a onclick = "pageMove.singleUrlParam('recommend','list')">추천캠핑지</a>
                        </li>
                        <li>
                              <li>
                                 <a>커뮤니티</a>				  
                                 <ul>
                                    <li><a>자유게시판</a>
                                    </li>
                                    <li><a>질문게시판</a>
                                    </li>
                                    <li><a>리뷰</a>
                                    </li>
                                 </ul>
                              </li>
                        </li>
                        <li><a onclick = "pageMove.singleUrlParam('main','login')">로그인</a>
                        </li>
                     </ul> 
                  </div>
               </div>
            </div>
         </nav>
      </header>
      <section>
      
      
         <div id="head">
            <div class="line">
               <h1>글램핑</h1>
            </div>
         </div>
          <div id="content">
            <div class="line">
               <div class="margin">
               
               
               <div><h3>asdkawdkalwdjkalwdjaklwkdlakdwalkd 나는 이제 깨우친다</h3></div>
               
               <!-- 시설정보 내용 -->
      <div class="container">
         <!--이미지 -->
         <!--이미지 불러오기 -->

         <div id="infocontent" class="infocontent">
            <div class="ci_box_areai">

               <div class="ciz_name_areai">

                  <input type="text" maxlength="30"
                     style="word-break: break-all; width: 100%; border: 0; margin-left: auto; margin-right: auto; display: block; text-align: center;"
                     class="name" readonly value="<%=cDTO.getCamname()%>" />
               </div>
            </div>
            <div class="ci_box_areai">
               style="margin-top: 2%; width: 100%; margin-bottom: 2%">
               <div class="cizinfo_areai">
                  <div class="list_cizinfo" style="padding:15px;">
                     <!-- 주소  -->
                     <div style="width: 100%">
                        <div style="margin-top:6px; margin-bottom:40px;">
                           <p style="float: right" class="icon-pointer"></p>
                           <p style="text-align:center; font-size:18px; line-height:18px; font-weight:bold;"><캠핑지 주소></p>
                           <p name="txt" style="font-size:12px; width: 100%; border: 0; ">
                              <%=cDTO.getCamnewadd()%>
                           </p>
                        </div>
                     <!-- 전화번호  -->
                        <div style="margin-top:6px; margin-bottom:40px;">
                           <p style="text-align:center; font-size:18px; line-height:18px; font-weight:bold;"><캠핑지 번호></p>
                           <p style="width: 100%; border: 0; font-size:12px; text-align:center;"/><%=cDTO.getCamtel()%></p>
                        </div>
                     <!-- 여는 시간  -->
                        <div style="margin-top:6px; margin-bottom:40px;">
                           <p style="text-align:center; font-size:18px; line-height:18px; font-weight:bold;"><캠핑지 구분></p>
                           <p style="width: 100%; border: 0; font-size:12px; text-align:center;"/><%=cDTO.getCamctg() %></p>
                        </div>
                        
                       
                     </div>      
                  
                     <!-- 글 내용 -->
                           <%-- <p style="float: left">CONTENT :</p>
                        </div>
                        <div class="col-sm-8 wrapi">
                           <textarea class="autosize" onkeydown="resize(this)"
                              onkeyup="resize(this)" name="txt"
                              style="cols: 10; float: left; overflow: hidden; resize: none; width: 100%; border: 0; margin-left: auto; margin-right: auto;"><%=fDTO.getFacontent()%></textarea>
                        </div> --%>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
           
</div>
               </div>
            </div>
         </div>
         
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
				</div>
				</div>
				</div>
      </section>
      
      
      
      <!-- FOOTER -->   
      <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>Copyright 2019, Vision Design - graphic KEUN
               </p>
            </div>
            <div class="s-12 l-6">
               <p class="right">
                  <a class="right" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding by Responsee Team</a>
               </p>
            </div>
         </div>
         
      </footer>
      
      <script type="text/javascript" src="/resource/js/responsee.js"></script> 
      <script type="text/javascript" src="/resource/owl-carousel/owl.carousel.js"></script>   
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
   </body>
   <%@ include file="/WEB-INF/view/jscss.jsp" %>
</html>