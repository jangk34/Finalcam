<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="poly.dto.RestDTO"%>
<%@page import="java.util.List"%>
    <% List<RestDTO> cList = (List<RestDTO>)request.getAttribute("cList");
     String jjaa = (String)request.getAttribute("jjaa");
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
               
               
               <!-- <div><button id="jangAjax">눌러눌러눌러</button></div> -->
      
   <!--   <script>
  $('#jangAjax').click(function(){
   
   $.ajax({
   url:"http://localhost:9000/select.do",
   method:"GET",
   crossDomain:true,
   success:function(data){
      console.log(data)
   },error:function(error){
      console.error(error)
   }
   })
 }) 
 </script> 
  -->
 <!-- <select id="region" >
<option value="강원도">강원도</option>
<option value="경기도">경기도</option>
 </select>
 <button id="analysis">분류</button>
 
 <script>
$('#analysis').click(function(){
 	/* $('#region option:selected').val(); */
 	var regionval = $('#region option:selected').val();
 	$.ajax({
 		url : "/cam/glamcamanalysis.do", //http://localhost:8080/cam/glamcamanlysis.do?regionval=강원도
 		method : "GET",
 		data : {
 			"regionval" : regionval  // 키,밸류
 		},
 		success : function(data){ // 
 			console.table(data)
 		},error:function(error){
 			console.table(error)
 		}
 	})
})
 </script> -->
 
               <!-- 반응형 클릭 -->
               <div class="tile s-12 m-6 l-4" style="width:30%; height:250px; margin-right:2%"> 
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
 

</div>
               </div>
            </div>
         </div>
      </section>
      <!-- FOOTER -->   
      <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>Copyright 2019, Vision Design - graphic zoo
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