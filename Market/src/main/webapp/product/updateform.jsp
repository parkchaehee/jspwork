<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<script src="../resources/js/validation.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="container my-3">
		<h2>상품 수정</h2>
		<div class="row">
		<form action="/updateproduct.do" method="post"
				enctype="multipart/form-data" name="newProduct">
			<div class="form-group row my-3">
			  <label class="col-2">상품 코드</label>
			  <div class="col-3">
			  	<input type="text" id="pid" name="pid" class="form-control"
			  		   value="${product.pid}">
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">상품명</label>
			  <div class="col-3">
			  	<input type="text" id="pname" name="pname" 
			  		  value="${product.pname}" class="form-control">
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">가격</label>
			  <div class="col-3">
			  	<input type="text" id="price" name="price" 
			  			value="${product.price}" class="form-control">
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">상품 설명</label>
			  <div class="col-4">
			  	<textarea rows="2" cols="40" name="description" 
			  		class="form-control">${product.description}</textarea>
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">카테고리</label>
			  <div class="col-3">
			  	<input type="text" name="category" 
			  			value="${product.category}" class="form-control">
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">재고수</label>
			  <div class="col-3">
			  	<input type="text" id="pstock" name="pstock" 
			  			value="${product.pstock}" class="form-control">
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">상태</label>
			  <div class="col-3">
			  	<c:if test="${product.condition eq 'New'}">
				  	<label><input type="radio" name="condition" value="New" checked>신상품</label>
				  	<label><input type="radio" name="condition" value="Old">중고품</label>
			  	</c:if>
			  	<c:if test="${product.condition eq 'Old'}">
				  	<label><input type="radio" name="condition" value="New">신상품</label>
				  	<label><input type="radio" name="condition" value="Old" checked>중고품</label>
			  	</c:if>
			  </div>
			</div>
			<div class="form-group row my-3">
			  <label class="col-2">상품이미지</label>
			  <div class="col-3">
			  	<input type="file" name="pimage" 
			  			value="${product.pimage}" class="form-control">
			  </div>
			</div>
			<div class="form-group row my-3">
			  <div class="col-3">
			  	<input type="button" value="수정" class="btn btn-success"
			  		   onclick="checkProduct()">
			  </div>
			</div>
		</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>