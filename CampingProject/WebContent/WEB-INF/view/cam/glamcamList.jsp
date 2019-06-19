<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="poly.dto.RestDTO"%>
<%@page import="java.util.List"%>
    <% List<RestDTO> cList = (List<RestDTO>)request.getAttribute("cList");
   		RestDTO cDTO = (RestDTO)request.getAttribute("cDTO");		%>
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
       <link rel="stylesheet" href="/resource/css/clicktab.css">
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="/resource/css/mouseover.css"> 
      <link rel="stylesheet" href="/resource/css/template-style.css"> 
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="/resource/js/jquery-3.4.1.min.js"></script>
      <script type="text/javascript" src="/resource/js/jquery-ui.min.js"></script> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
      <script type="text/javascript" src="/resource/js/clicktab.js"></script> 

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
                     </ul> 
                  </div>
               </div>
            </div>
         </nav>
      </header>
      <section>
         <div id="head">
            <div class="line">
               <h1>지역별 캠핑지 조회</h1>
            </div>
         </div>
          <div id="content">
            <div class="line">
               <div class="margin">
               <!-- 탭  -->
               
          <!--      <span class="dropdown-el">
    <input type="radio" name="sortType" value="Relevance" checked="checked" id="sort-relevance"><label for="sort-relevance">블루비</label>
    <input type="radio" name="sortType" value="Popularity" id="sort-best"><label for="sort-best">네이버</label>
    <input type="radio" name="sortType" value="PriceIncreasing" id="sort-low"><label for="sort-low">다음</label>
    <input type="radio" name="sortType" value="PriceDecreasing" id="sort-high"><label for="sort-high">지마켓</label>
    <input type="radio" name="sortType" value="ProductBrand" id="sort-brand"><label for="sort-brand">옥션</label>
    <input type="radio" name="sortType" value="ProductName" id="sort-name"><label for="sort-name">인터파크</label>
  </span> -->
 
<select id="region" style="width:350px; padding:0px 15px 0px 15px; height:38px; font-size:13px; margin-right:5px;">
<option value="강원도">강원도</option>
<option value="경기도">경기도</option>
<option value="경상남도">경상남도</option>
<option value="경상북도">경상북도</option>
<option value="대구광역시">대구광역시</option>
<option value="대전광역시">대전광역시</option>
<option value="광주광역시">광주광역시</option> 
 </select>
 <button id="analysis" style="font-size:12px; padding:12px 20px 9px 20px; border:1px solid #ccc; box-sizing:border-box; background:#f9f9f9; cursor:pointer;">분류</button>
 
<script>
$('#analysis').click(function(){
 	/* $('#region option:selected').val(); */
 	var regionval = $('#region option:selected').val();
 	var ajaxview = $('#ajaxview');
 	var cont = '';
 	$.ajax({
 		url : "http://localhost:9000/select.do", //http://localhost:8080/cam/glamcamAnalysis.do?regionval=강원도
 		method : "GET",
 		crossDomain:true,
 		data : {
 			"regionval" : regionval  // 키,밸류
 		},
 		success : function(data){ // 
 			/*  console.table(data.length)
 			console.log(data[0].camname)  // .객체명 */
 			/* for ( var i = 0; i<data.length; i++) {
 				console.log(data[i].camname)
 			}  */
 			console.table(data)
 			cont += "<div style='margin-bottom:40px;'></div>";
 			$.each(data, function(i, item) {  //for ( var i = 0; i<data.length; i++) { } 와같음
 			      // 그리고 index부터 item의 수만큼 수행 된다는 의미, index는 0을 초기값으로 함
 			      //index = i, item 은 데이터길이
 				/* console.log(data[index].camname) */
 				cont += "<div style=''>";
 				cont += "<div style='width:33%; float:left; padding:20px; border:1px solid #f0f0f0;' >";
 				cont += "<a style='float:left;' href='/cam/glamcamdetail.do?Camno="+data[i].camno+"'>"+data[i].camname+"</a>"
 				cont += "<div style='clear:both; float:left; '>"+data[i].camnewadd+"</div>";
 				cont += "<div style='clear:both; float:left;'>"+data[i].camtel+"</div>";
 				cont += "</div>"
 				//cont += '<div onclick = pageMove.detailParam("'+data[i].camno+'"); style="width:33%">'+data[i].camname+'</div>';
 				cont += "</div>"
 			})
 			ajaxview.html(cont);
 		},error:function(error){
 			console.table(error)
 		}
 	})
})
 </script> 
 <div id="ajaxview"></div> 
 
 
 
               <!-- 반응형 클릭 -->
<!-- <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_01.jpg'/>
  <div class="text">
  <h1><a onclick = "pageMove.singleUrlParam('cam','glamcamDetail')">안녕하세요</a></h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
 
 <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_01.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
 
 <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_01.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
 
 <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_01.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>


<div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_02.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
  
  <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_03.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
 
 <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_03.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
 
 
 <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_03.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div>
 
 
 <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%;"> 
  <img src='http://www.blueb.co.kr/SRC2/_image/s_03.jpg'/>
  <div class="text">
  <h1>Lorem ipsum.</h1>
  <h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
  <p class="animate-text">Bacon ipsum dolor amet pork belly tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank sirloin strip steak prosciutto kevin turducken. </p>
<div class="dots">
    <span></span>
    <span></span>
    <span></span>
  </div>
  </div>
 </div> -->
               </div>
            </div>
         </div>
        <div id="fourth-block">
            <div class="line">
               <div id="news-carousel" class="owl-carousel owl-theme">
                  <div class="item">
                     <h2>캠핑고는 ?</h2>
                     <p class="s-12 m-12 l-8 center">지역별 캠핑지 상세정보를 보여주는 사이트
                     </p>
                  </div>
                  <div class="item">
                     <h2>캠핑고 기능은 ?</h2>
                     <p class="s-12 m-12 l-8 center">캠핑지가 많은 지역중 지역별로 분석하여 보여줄수 있다!
                                          </p>
                  </div>
                  <div class="item">
                     <h2>준비되셨나요 ?</h2>
                     <p class="s-12 m-12 l-8 center">캠핑고를 시작해보세요 ! 
                     </p>
                  </div>
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
                  <a class="right" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding by ChangKeun</a>
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