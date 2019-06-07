<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String msg = (String)request.getAttribute("msg"); // 컨트롤러 키값으로 value값 불러오기, 자바문법표현
       String url = (String)request.getAttribute("url");
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<script>

alert("<%=msg%>");
location.href = "<%=url%>";

</script>
</head>
<body>

</body>
</html>