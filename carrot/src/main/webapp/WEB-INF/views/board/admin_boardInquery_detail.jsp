<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일대일 게시판 상세정보보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/hyun.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jhmin.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
</head>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<body>
	<div class="page-main">
		<div class="content-body">
			<div>
				<jsp:include page="/WEB-INF/views/common/side.jsp" />
				<div class="main-content">
					<div>
						<h3>${board.title}</h3>
					</div>
					<div>
						<span class="date">[${board.reg_date}]</span>
						<p>${board.content}</p>
					</div>
				</div>
			</div>
		</div>
		<div class="page-footer">
			<c:if test="${user_auth == 3}">
			<div class="align-right paging">
				<input class="point" type="button" value="답변하기" onclick="location.href='adminBoardModifyForm.do?aboard_num=${board.aboard_num}'">
				<input class="point" type="button" value="삭제" id="delete_btn">
				<input class="point" type="button" value="목록" onclick="location.href='adminBoardInquery.do'">		
			</div>
			<script type="text/javascript">
				let delete_btn = document.getElementById('delete_btn');
				//이벤트 연결
				delete_btn.onclick = function(){
				let choice = confirm('삭제하시겠습니까?');
					if (choice) {
						location.replace('adminBoardDelete.do?aboard_num=${board.aboard_num}');
					}
				}
			</script>
			</c:if>
		</div>
	</div>
</body>
</html>