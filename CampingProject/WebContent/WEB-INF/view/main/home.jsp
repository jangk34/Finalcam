<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
   <head>
   <meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
      <title>Free responsive business website template</title>
      <link rel="stylesheet" href="/resource/css/components.css">
      <link rel="stylesheet" href="/resource/css/icons.css">
      <link rel="stylesheet" href="/resource/css/responsee.css">
      <link rel="stylesheet" href="/resource/owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="/resource/owl-carousel/owl.theme.css"> 
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="/resource/css/template-style.css"> 
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="/resource/js/jquery-3.4.1.min.js"></script>
      <script type="text/javascript" src="/resource/js/jquery-ui.min.js"></script>
   </head>
   <body class="size-1140">
      <!-- TOP NAV WITH LOGO -->  
      <script type="text/javascript" src="/resource/js/login.js"></script>
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
                       <li><a onclick = "pageMove.singleUrlParam('cam','autocamlist')">오토캠핑</a>
                        </li>
                        <li><a onclick = "pageMove.singleUrlParam('cam','glamcamlist')">글램핑</a>
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
         <!-- CAROUSEL -->  	
         <div id="carousel">
            <div id="header-carousel" class="owl-carousel owl-theme">
               <div class="item">
                  <img src="/resource/img/1111.jpg" alt="">      
                  <div class="carousel-text">
                     <div class="line">
                        <div class="s-12 l-9">
                           <h2>Theme based on Responsee framework</h2>
                        </div>
                        <div class="s-12 l-9">
                           <p>With amazing responsive carousel
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <img src="/resource/img/2222.jpg" alt="">      
                  <div class="carousel-text">
                     <div class="line">
                        <div class="s-12 l-9">
                           <h2>Build new layout in 10 minutes!</h2>
                        </div>
                        <div class="s-12 l-9">
                           <p>Lightweight, more intuitive and useful responsive CSS framework
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <img src="/resource/img/3333.jpg" alt="">      
                  <div class="carousel-text">
                     <div class="line">
                        <div class="s-12 l-9">
                           <h2>Design theme is under the MIT license</h2>
                        </div>
                        <div class="s-12 l-9">
                           <p>Best theme based on Responsee framework
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- FIRST BLOCK --> 	
         <div id="first-block">
            <div class="line">
               <h2>메뉴</h2>
               <p class="subtitile">캠핑 관련
               </p>
               <div class="margin">
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-sli-people icon2x"></i>
                     <h3 onclick = "pageMove.singleUrlParam('qa','list')">자주하는 질문</h3>
                    <!--  <li><a href="/recommend/list.do">추천캠핑장</a> -->
                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-sli-shield icon2x"></i>
                     <h3 onclick = "pageMove.singleUrlParam('anounce','list')">공지사항</h3>
                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-sli-puzzle icon2x"></i>
                     <h3>커뮤니티</h3>
                  </div>
                  <div><button id="jangjax">테스트테스트</button></div>
                  <script>
                  $("#jangjax").click(function{
                	  $.ajax({
                		url : "http://localhost:8081/notices/select.do",
                		method : "get",
                		async : "true",
                		content-type : "application/json",
						dataType : "jsonp"
                		crossDomain : true,
                		success : function(dat) {
                			
                		},error:function(){
                			
                		},
                	  })
                  }                  
                  </script>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-sli-globe-alt icon2x"></i>
                     <h3 onclick = "pageMove.singleUrlParam('inq','one')">1:1문의</h3>
                  </div>
               </div>
            </div>
         </div>
         <!-- SECOND BLOCK --> 	
         <div id="second-block">
            <div class="line">
               <div class="margin-bottom">
                  <div class="margin">
                     <article class="center">
                     
                     
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
height:550px;
}
</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/plugins/forceDirected.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

<!-- Chart code -->
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv", am4plugins_forceDirected.ForceDirectedTree);
var networkSeries = chart.series.push(new am4plugins_forceDirected.ForceDirectedSeries())

chart.data = [
  {
    name: "핵심 키워드",
    children: [
      {
        name: "키즈",
        children: [
          { name: "키즈존", value: 100 },
          { name: "안전", value: 60 }
        ]
      },
      {
        name: "수도권",
        children: [
          { name: "펜션", value: 135 },
          { name: "리조트", value: 98 }
        ]
      },
      {
        name: "캠핑장",
        children: [
          {
            name: "캠핑",
            children: [
              { name: "도구", value: 130 },
              { name: "시설", value: 87 },
              { name: "야영", value: 55 }
            ]
          },
          { name: "수도권", value: 148 },
          {
            name: "편의", children: [
              { name: "야영", value: 53 },
              { name: "숙박", value: 30 }
            ]
          },
          { name: "지방", value: 26 }
        ]
      },
      {
        name: "캠핑 용품",
        children: [
          { name: "캠핑용품샵", value: 415 },
          { name: "텐트", value: 148 },
          { name: "편의", value: 89 }
        ]
      },
      {
        name: "오토캠핑",
        children: [
          {
            name: "글램핑",
            children: [
              { name: "텐트", value: 33 },
              { name: "이색", value: 40 },
              { name: "명소", value: 89 }
            ]
          },
          {
            name: "렌트",
            value: 148
          }
        ]
      }

    ]
  }
];

networkSeries.nodes.template.url = "https://www.google.co.kr/search?complete=1&hl=ko&q={name}";

networkSeries.dataFields.value = "value";
networkSeries.dataFields.name = "name";
networkSeries.dataFields.children = "children";
networkSeries.nodes.template.tooltipText = "{name}:{value}";
networkSeries.nodes.template.fillOpacity = 1;
networkSeries.manyBodyStrength = -20;
networkSeries.links.template.strength = 0.8;
networkSeries.minRadius = am4core.percent(2);

networkSeries.nodes.template.label.text = "{name}"
networkSeries.fontSize = 10;


}); // end am4core.ready()
</script>

<!-- HTML -->
<div id="chartdiv"></div>

                     </article>
                  </div>
               </div>
            </div>
         </div>
         <!-- GALLERY --> 	
         <div id="fourth-block">
            <div class="line">
               <div id="news-carousel" class="owl-carousel owl-theme">
                  <div class="item">
                     <h2>Amazing responsive template</h2>
                     <p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                     </p>
                  </div>
                  <div class="item">
                     <h2>Responsive components</h2>
                     <p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                     </p>
                  </div>
                  <div class="item">
                     <h2>Retina ready</h2>
                     <p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit  lobortis nisl ut aliquip ex ea commodo consequat.
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
      <script type="text/javascript" src="resource/js/responsee.js"></script> 
      <script type="text/javascript" src="resource/owl-carousel/owl.carousel.js"></script>   
      <script type="text/javascript">
         jQuery(document).ready(function($) {  
            var owl = $('#header-carousel');
            owl.owlCarousel({
              nav: true,
              dots: false,
              items: 1,
              loop: true,
              navText: ["&#xf007","&#xf006"],
              autoplay: true,
              autoplayTimeout: 4000
           });
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