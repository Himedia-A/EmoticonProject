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
			location.href="/"
		})
		$("#submit").on("click", function(){
			if($("#m_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#m_pw").focus();
				return false;
			}
			if($("#m_name").val()==""){
				alert("이름을 입력해주세요.");
				$("#m_name").focus();
				return false;
			}
		});
		$("#cancel").on("click", function(){
			location.href="/member/profile-details?m_id=${member.m_id}"
		})
	})
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="/member/register"
		})
		$("#memberUpdateBtn").on("click", function(){
			location.href="/member/member-update-view";
		})
		$("#memberDeleteBtn").on("click", function(){
			location.hreg="/member/member-delete-view";
		})
	})
</script>
<style>
	.new-line{
		margin-bottom: 40px;
	}
</style>
<body id="body">
<section class="signin-page account">
<form action="/member/memberUpdate" method="post">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="block text-center">
					<a class="logo" href="index">
						<img src="" alt="">
						<h1>Emoticon Shop</h1>
					</a>
					<div class="new-line">
					<h2 class="text-center">Membership modification</h2>
					</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="ID" id="m_id" name="m_id" value="${member.m_id}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" id="m_pw" name="m_pw" value="${member.m_pw}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username" id="m_name" name="m_name" value="${member.m_name}">
						</div>
						<div class="text-center">
							<input type="submit" class="btn btn-success" id="submit" value="회원정보수정">
							<input type="button" class="cencle btn btn-danger" id="cancel" value="취소">
						</div>
				</div>
			</div>
		</div>
	</div>
	</form>
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