<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>
	<main id="main" class="main">
		<div class="mt-3 pagetitle">
			<h4>상품 등록</h4>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">판매 관리</a></li>
					<li class="breadcrumb-item active">상품 등록</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section">
			<div class="row">
			 	<div class="px-5 col-lg-12">
			 		<div class="card">
			 			<div class="card-body">
			 				<h5 class="py-4 cart-title">Register Emoticon</h5>
			 				<!-- General Form Elements -->
			 				<form action="/admin/register" method="post" id="register-form" enctype="multipart/form-data">
			 					<div class="row mb-4">
			 						<label for="inputImage" class="col-sm-2 col-form-label">대표 이미지 업로드</label>
			 						<div class="col-sm-10">
			 							<input class="form-control" type="file" id="formfile" name="file" accept="image/*" required="required">
			 						</div>
			 					</div>
			 					<div class="row mb-4">
			 						<label for="inputImage" class="col-sm-2 col-form-label">이모티콘 업로드(최대 20장)</label>
			 						<div class="col-sm-10">
			 							<input class="form-control" type="file" id="formfile" name="file" multiple="multiple" accept="image/*" required="required" onchange="fileCheck(this)">
			 						</div>
			 					</div>
			 					<div class="row mb-4">
			 						<label for="inputDate" class="col-sm-2 col-form-label">상품 등록일</label>
			 						<div class="col-sm-10">
			 							<input class="form-control" type="date" name="p_regdate" required="required">
			 						</div>
			 					</div>
			 					<div class="row mb-4">
			 						<label for="inputText" class="col-sm-2 col-form-label">상품명</label>
			 						<div class="col-sm-10">
			 							<input class="form-control" type="text" name="p_name" required="required">
			 						</div>
			 					</div>
			 					<div class="row mb-4">
			 						<label for="inputNumber" class="col-sm-2 col-form-label">상품가격</label>
			 						<div class="col-sm-10">
			 							<input class="form-control" type="number" name="p_price" value="3000">
			 						</div>
			 					</div>
			 				</form>
			 			</div>
			 		</div>
			 	</div>
			</div>
		</section>
	</main>
</body>
</html>