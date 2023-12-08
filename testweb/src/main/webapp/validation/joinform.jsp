<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<link rel="stylesheet" href="../css/style.css">
<script src="../js/validation.js"></script>
</head>
<body>

	<div id="container">
	  <section id="join">
		<h2>회원 가입</h2>
		 <form action="/insertmember.do" method="post" name="member">
		   <fieldset>
		   	<ul>
		   		<li>
		   			<label for="t_id">아이디</label>
		   			<input type="text" id="t_id" name="id"
		   			placeholder="아이디는 5 ~ 12자까지 입력해주세요" autofocus >
		   			<p id="message"></p>
		   		</li>
		   		<li>
		   			<label for="passwd">비밀번호</label>
		   			<input type="password" id="passwd" name="passwd"
		   			placeholder=" 영문자, 숫자, 특수문자 포함 7자 이상 입력">
		   		</li>
		   		<li>
		   			<label for="passwd2">비밀번호 확인</label>
		   			<input type="password" id="passwd2" name="passwd2"
						placeholder="비밀번호를 동일하게 입력해주세요">
		   		</li>
		   		<li>
		   			<label for="name">이름</label>
		   			<input type="text" id="name" name="name"
						placeholder="숫자로 시작할 수 없습니다.">
		   		</li>
		   		
		   	</ul>
		   	<div class="button">
		   	  <button type="button" onclick="checkMember()">가입</button>
		   	  <button type="reset">취소</button> 
		   </div>
		   </fieldset>
		   
		 </form>
			
	  </section>
	</div>

</body>
</html>