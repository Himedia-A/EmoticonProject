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
			 							<input class="form-control" type="file" id="formfile" name="files" multiple="multiple" accept="image/*" required="required" onchange="fileCheck(this)">
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
			 					<div class="row mb-4">
			 						<label for="inputText" class="col-sm-2 col-form-label">제작자</label>
			 						<div class="col-sm-10">
			 							<input class="form-control" type="text" name="p_creator" required="required">
			 						</div>
			 					</div>
			 					<div class="row mb-4">
			 						<label for="inputText" class="col-sm-2 col-form-label">기타사항</label>
			 						<div class="col-sm-10">
			 							<textarea class="form-control" style="height: 100px;text-align: left;vertical-align: top" name="p_etc"></textarea>
			 						</div>
			 					</div>
			 					<div class="row mb-1">
			 						<div class="text-center">
			 							<button type="submit" class="px-5 py-2 btn btn-primary">Submit</button>
			 						</div>
			 					</div>
			 				</form>
			 				<!-- End General Form Elements -->
			 			</div>
			 		</div>
			 	</div>
			</div>
		</section>
	</main>
	<%@include file="../includes/admin-footer.jsp" %>
<script type="text/javascript">
	let fileNo = 0;
	let filrArr = [];
	function fileChk(obj) {
		let maxFileCnt = 20;
		let curFileCnt = obj.files.length;
		
		if(curFileCnt > maxFileCnt){
			alert("이미지는 최대 "+maxFileCnt+"개 까지 첨부가능합니다.");
			document.getElementById('modify-form').reset();
			return;
		}
	}
</script>
</body>
</html>