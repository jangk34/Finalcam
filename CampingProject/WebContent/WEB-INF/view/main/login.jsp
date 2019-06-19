<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.util.List" %>
    <%@page import="poly.dto.MainDTO"%>
    <% List<MainDTO> mList = (List<MainDTO>)request.getAttribute("mList");%>
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
      <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
      <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
      
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
<%--                          <li><a href="logout.do">로그아웃</a>
                        <%} %>
 --%>                       
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

               <link rel="stylesheet" href="/resource/css/login.css" />
               
               <section class="container">
		    <article class="" style="margin:auto; width:60%;">
			        <h1>회원</h1>
			        <div class="tabs">
				            <span class="tab signin active"><a href="#signin">로그인</a></span>
				            <span class="tab signup"><a href="#signup">회원가입</a></span>
			        </div>
			        <div class="content">
				            <div class="signin-cont cont">
					                <form action="/main/loginproc.do" method="post" enctype="multipart/form-data">
						                    <input type="email" name="email" id="email" class="inpt" required="required" placeholder="이메일 주소">
						                    <label for="email">이메일 주소</label>
						                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">
                						    <label for="password">패스워드</label>
						                    <input type="checkbox" id="remember" class="checkbox" checked>
						                    <label for="remember">아이디 저장</label></br>
						                    <div class="submit-wrap"> 
						                    <!-- 로그인 -->
						                    	<input type="submit" id="getsession" value="로그인" class="submit">
							                        <a href="#" class="more">Forgot your password?</a>
						                    </div>
        					        </form>
        					                					        <!-- 네이버아이디로로그인 버튼 노출 영역 -->
									 <div style="width:40%; margin:auto;">
									 
        					        <div id="kakao-login-btn">카카오톡 로그인</div>
        					        
        					        <div style="margin"></div>
        					        
        					        <div id="naverIdLogin">네이버 로그인</div>   
        					        
        					        </div>   
    				        </div>
    				        <div class="signup-cont cont">
                <form action="/main/login/insertproc.do" method="post" enctype="multipart/form-data" class="">
						                    <input type="text" name="name" id="name" class="inpt" required="required" placeholder="이름" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
						                    <label for="name">Your name</label>
                                            <input type="text" class="inpt" required="required" placeholder="이메일 주소" name="email" id="test" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
						                    <label for="email">Your email</label>
						                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                						    <label for="password">Your password</label>
						                    <div class="submit-wrap">
							                        <input type="submit" value="회원가입" class="submit">
							                        <a href="#" class="more">Terms and conditions</a>
						                    </div>
        					        </form>
           		 	 </div>
			        </div>
		    </article>
	</section>
	
	<script type="text/javascript" src="/resource/js/login.js"></script>
	
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
     <script>
     Kakao.init('7047c4bc384caf922e8f2bbcdc362d2f');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        // 로그인 성공시, API를 호출합니다.
        Kakao.API.request({
          url: '/v2/user/me',
          success: function(res) {
			console.table(JSON.stringify(res)); // 찍음
    		  
    		  jName = JSON.stringify(res.properties.nickname);
			  console.log("jName" + jName);
    		  jEmail = JSON.stringify(res.kakao_account.email);
    		  console.log("jEmail" + jEmail);
    		  location.href="/main/loginkakao.do?kName="+jName+"&kEmail="+jEmail // .
    		  //jsp -> controller 전송방식에는 inputype, form태그 전송방식
          },
          fail: function(error) {
            alert(JSON.stringify(error));
          }
        });
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      }
    });
      
</script>

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "Vv8SsVOynvNnVV7YJTIi",
			callbackUrl: "http://13.125.193.78:8080/home.do",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 49} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
</script>
   </body>
   <%@ include file="/WEB-INF/view/jscss.jsp" %>
</html>