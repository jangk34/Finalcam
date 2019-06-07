<%@page import="poly.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% List<NoticeDTO> nList = (List<NoticeDTO>)request.getAttribute("nList");
     String jjaa = (String)request.getAttribute("jjaa");
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div>제목</div>
<% for (int i = 0; i<nList.size(); i++) {%>
<div><a onclick="pageMove.singleUrlParam('notice','noticedetail')"=<%=nList.get(i).getNoticeno()%>"><%=nList.get(i).getTitle()%></a></div>
<%} %> <!--  -->
<button onclick="pageMove.notice('add')">등록하기</button>
</body>
<%@ include file="/WEB-INF/view/jscss.jsp" %>
</html>