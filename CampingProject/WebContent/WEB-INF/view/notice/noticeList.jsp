<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List" %>
    <%@page import="poly.dto.NoticeDTO"%>
    <%@ page import="poly.util.CmmUtil" %>
   <% List<NoticeDTO> nList = (List<NoticeDTO>)request.getAttribute("nList");
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
      <link rel="stylesheet" href="/resource/css/notice.css"> 
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="/resource/css/template-style.css"> 
      <link rel="stylesheet" href="/resource/css/table.css"> 
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="/resource/js/jquery-3.4.1.min.js"></script>
      <script type="text/javascript" src="/resource/js/jquery-ui.min.js"></script>   
      <script type="text/javascript" src="/resource/js/argon.js"></script>
      <script type="text/javascript" src="/resource/js/argon.min.js"></script>      
      <script src="/resource/js/table.js"></script>
      <script>
      
      $(document).ready( function () {
    	    $('#myTable').DataTable();
    	} );
      
      </script>
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
               <h1>공지사항</h1>
            </div>
         </div>
         <div id="content">
         <div class="table_style">
         
         <!-- Main content -->
	<div class="main-content">
		<!-- Top navbar -->
		<nav class="navbar navbar-top navbar-expand-md navbar-dark"
			id="navbar-main">
			<div class="container-fluid">
				<!-- Brand -->
				<a
					class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block">
					</a>
				<!-- Form -->
				<form
					class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
					<div class="form-group mb-0">
						<div class="input-group input-group-alternative">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-search"></i></span>
							</div>
						</div>
					</div>
				</form>
				<!-- User -->
				<ul class="navbar-nav align-items-center d-none d-md-flex">
					<li class="nav-item dropdown"><a class="nav-link pr-0"
						href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
					</a>
				</ul>
			</div>
		</nav>
		<!-- Header -->
		<div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
			<div class="container-fluid">
				<div class="header-body">
					<!-- Card stats -->
				</div>
			</div>
		</div>
		<!-- Page content -->
		<div class="container-fluid mt--7">
			<!-- Table -->
			<div class="row">
				<div class="col">
					<div class="" style="width:70%; margin:0 auto">
						<div class="card-header border-0">
							<h3 class="mb-0">공지사항</h3>
						</div>
						<div class="table col-md-12" style="border:1px;">
								<!-- head -->
								<div style="font-weight: bolder; display:flex; justify-content: space-between;">
									<div>번호</div>
									<div>제목</div>
									<div>작성자</div>
									<div>등록일</div>
								</div>
								<% 
								for(int i=0; i<nList.size(); i++) {
								%>
								<!-- body -->
								<div style= "border:1px; width:70% font-weight: bolder; display:flex; justify-content: space-between;">
								<!-- 1 열 -->
									<div class="col-md-1">
										<div class="media align-items-center">
											<div class="media-body">
												<span class="mb-0 text-sm"><%=nList.get(i).getNoticeno() %></span>
											</div>
										</div>
									</div>
									<!-- 2 열 -->
									<div class="col-md-7"><a onclick="pageMove.singleUrlParam('notice','noticeDetail','<%=nList.get(i).getNoticeno() %>')" style="cursor:pointer"><%=nList.get(i).getTitle() %></a></div>
									<!-- 3 열 -->
									<div class="col-md-2">
										<span class="badge badge-dot mr-4"> <i
											class="bg-warning"></i><%=nList.get(i).getName() %>
										</span>
									</div>
									<!-- 4 열 -->
									<div class="col-md-2">
										<div class="avatar-group">
											<%=nList.get(i).getRegdate() %>
										</div>
									</div>
								</div>
								<%  } %>
								
						</div>
					</div>
					<script>
					function page(idx){
						var pagenum = idx;
						var contentnum =$("#contentnum option:selected").val();
						localtion.href="${pageCountext.request.contextPath}/noticeList?pagenum=1&contentnum=10"
					}		
					</script>
					<div class="card-footer py-4">
						<nav aria-label="...">
							<ul class="pagination justify-content-end mb-0">
							
							<%-- <% if(pDTO.isPrev()) {%>
								<li class="page-item disabled">
								<a class="page-link" href='javascript:page("<%=pDTO.getStartPage()-1 %>")'>) 
								<i class="fas fa-angle-left"></i>
								<span class="sr-only">Previous</span></a>
								</li>
								<%} %>
								
								<% for (int i = pDTO.getStartPage(); i<=pDTO.getEndPage(); i++){%>
								c:forEach begin="${pDTO.getStartPage()}" end="${pDTO.getEndPage()}" var="idx">
								<li class="page-item active">
								<a class="page-link" href='javascript:page("<%=pDTO.getStartPage()%>")'><%=pDTO.getStartPage()%></a>
								</li>
								<%} %>
								
								<% if (pDTO.isNext()) {%>
								<li class="page-item"><a class="page-link" href='javascript:page("<%=pDTO.getEndPage()%>")'>
								<i class="fas fa-angle-right"></i> 
								<span class="sr-only">Next</span></a></li>
								<%} %> --%>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<!-- Footer -->
		</div>
	</div>
         
         </div>
          <!-- 등록버튼 시작 -->
</div>
<!-- 등록버튼 종료 -->
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