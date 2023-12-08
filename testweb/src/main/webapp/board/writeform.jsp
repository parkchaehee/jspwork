<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 폼</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<c:if test="${empty sessionId}">
		<script type="text/javascript">
			alert("로그인이 필요합니다");
			location.href = "/loginform.do";
		</script>
	</c:if>

	<jsp:include page="../header.jsp" />
	<div id="container">
	  <section id="writeform">
		<h2>글쓰기</h2>
			<form action="/write.do" method="post">
				<table>
					<tbody>
						<tr>
							<td><input type="text" name="title"
								placeholder="글제목" required></td>
						</tr>
						<tr>
							<td><textarea rows="7" cols="100" 
							name="content" placeholder="글내용"></textarea> </td>
						</tr>
					</tbody>
					<tr>
						<td>
							<button type="submit">등록</button>
							<button type="reset">취소</button>
						</td>
					</tr>
				</table>
			</form>
	  </section>
	</div>
<jsp:include page="../footer.jsp" />
</body>
</html>