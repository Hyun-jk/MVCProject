  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 완료</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dain.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="page-main">
	<div class="result-display">
		<div class="align-center">
			상품 등록을 완료했습니다!
			<p>
			<input type="button" value="홈으로" class="button" onclick="location.href = '${pageContext.request.contextPath}/main/main.do';">
		</div>
	</div>
</div>
</body>
</html>
