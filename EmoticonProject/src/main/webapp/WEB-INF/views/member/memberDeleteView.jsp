<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이모티콘 샵</title>
<!-- Mobile Specific Metas -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport" content="width=divice-width, initial-scale=1.0 maximum-scal=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.png">
<!-- Themefisher Icon font -->
<link rel="stylesheet" href="../resources/plugins/themefisher-font/style.css">
<!-- bootstrap.min.css -->
<link rel="stylesheet" href="../resources/plugins/bootstrap/css/bootstrap.min.css">
<!-- Animate css -->
<link rel="stylesheet" href="../resources/plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="../resources/plugins/slick/slick.css">
<link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="../resources/css/style.css">
<!-- Profile-detail Stylesheet -->
<link rel="stylesheet" href="../resources/css/profile-details.css">
<!-- Product-details Stylesheet -->
<link rel="stylesheet" href="../resources/css/product-details.css">
<!-- main stylesheet -->
<link rel="stylesheet" href="../resources/css/style_main.css">
<!-- jquery -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		//취소
		$(".cencel").on("click", function(){
			location.href="/member/profile-details?m_id=${member.m_id}"
		})
		$("#submit").on("click", function(){
			if($("#m_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#m_pw").focus();
			}
			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dataType : "json",
				data : $("#delForm").serializeArray(),
				success : function(data){
					if(data==0){
						alert("패스워드가 틀렸습니다.");
						return;
					}else{
						if(confirm("회원 탈퇴하시겠습니까?")){
							$("#delForm").submit();
						}
					}
				}
			})
		});
		
	})
</script>
<body>
<section class="signin-page account">
<form action="/member/memberDelete" method="post" id="delForm">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="block text-center">
					<a class="logo" href="/shop/">
						<img src="" alt="">
						<h1>Emoticon Shop</h1>
					</a>
					<h2 class="text-center">Unregister</h2>
					&nbsp;&nbsp;
					<p>정말 탈퇴하시겠습니까? 탈퇴하시려면 비밀번호를 한번 더 입력해주세요.</p>&nbsp;&nbsp;
					</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="ID" id="m_id" name="m_id" value="${member.m_id}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" id="m_pw" name="m_pw">
						</div>
					</form>
					<div class="text-center">
						<div class="form-group has-feedback">
						<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
						<button class="cancle btn btn-danger" type="button" id="cancel">취소</button>					
				</div>
			</div>
			<div>
				<c:if test="${msg==false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
			<p class="mt-20"><a href="/member/profile-details?m_id=${member.m_id}">Back to Mypage</a></p>
		</div>
	</div>
	
</section>
<!-- Essential Scripts -->

<!-- Main jQuery -->
<script src="resources/plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.1 -->
<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap Touchpin -->
<script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.mins.js"></script>
<!-- Instagram Feed Js -->
<script src="resources/plugins/instafeed/instafeed.min.js"></script>
<!-- Video Lightbox Plugin -->
<script src="resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
<!-- Count Down Js -->
<script src="resources/plugins/syo-timer/build/jquery.syotimer.mis.js"></script>
<!-- slick Carousel -->
<script src="resources/plugins/slick/slick.min.js"></script>
<script src="resources/plugins/slick/slick-animation.min.js"></script>
<!-- Google Mapl -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
<script type="text/javascript" src="../plugins/google-map/gmap.js"></script>
<!-- Main Js File -->
<script src="resources/js/script.js"></script>
</body>
</html>