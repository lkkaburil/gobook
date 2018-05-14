<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>Gobook LIST</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<!-- Fonts-->
<link rel="stylesheet" type="text/css"
	href="../css/css_review/assets/fonts/fontawesome/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="../css/css_review/assets/fonts/pe-icon/pe-icon.css">
<!-- Vendors-->
<link rel="stylesheet" type="text/css"
	href="../css/css_review/assets/vendors/bootstrap/grid.css">
<link rel="stylesheet" type="text/css"
	href="../css/css_review/assets/vendors/magnific-popup/magnific-popup.min.css">
<link rel="stylesheet" type="text/css"
	href="../css/css_review/assets/vendors/swiper/swiper.css">
<!-- App & fonts-->
<link rel="stylesheet" type="text/css" id="app-stylesheet"
	href="../css/css_review/assets/css/main.css">
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<![endif]-->
<style type="text/css">
.search1 {
	border: 1px solid #bcbcbc;
	border-radius: 0px;
	width: 50%;
	margin: 2px auto;
	text-align: center;
}
</style>

<script type="text/javascript">
	function fileDown(re_filename) {
		var url = "${root}/download";
		url += "?re_filename=" + re_filename;
		url += "&dir=/storage_b";
		location.href = url;
	}

	function read(re_num) {
		var url = "./read";
		url += "?re_num=" + re_num; //자바스크립트변수는 + jsp변수는 식 안에
		url += "&col=${col}";
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";

		location.href = url;
	}
</script>

</head>

<body>

	<div class="page-wrap" style="margin-left: 300px;" id="root">


		<!-- Content-->
		<div class="wil-content">




			<!-- Section -->

			<section class="awe-section bg-gray">
				<div class="container">
					<div class="grid-css grid-css--masonry" data-col-lg="3"
						data-col-md="2" data-col-sm="2" data-col-xs="1" data-gap="30">
						<div class="grid__inner">
							<div class="grid-sizer"></div>
							<div class="grid-item">
								<div class="grid-item__inner">
									<div class="grid-item__content-wrapper">

										<!-- post -->
									<c:choose>
										<c:when test="${empty list }">
											<tbody>
												<tr>
													<td colspan="6">등록된 글이 없습니다</td>
												</tr>
											</tbody>
										</c:when>

										<c:otherwise>
											<c:forEach var="dto" items="${list}">
												<div class="post">
													<div class="post__media">
														<a href="javascript:read('${dto.re_num}')"><img
															src="${dto.re_filename }?w=1260&amp;h=750&amp;auto=compress&amp;cs=tinysrgb"
															alt="" /></a>
													</div>
													<c:if test="${not empty dto.re_filename }">
														<a href="javascript:fileDown('${dto.re_filename }')">${dto.re_filename }</a>
													</c:if>
													&nbsp;
													<div class="post__body">
														<div class="post__meta">
															<span class="date">${dto.re_wdate }</span><span
																class="author"><a
																href="javascript:read('${dto.re_num}')" rel="">by
																	${dto.s_id}${dto.c_id }님</a></span>
														</div>
														<h2 class="post__title">
															<a href="javascript:read('${dto.re_num}')">${dto.re_title }</a>
														</h2>
														<p class="post__text">${dto.re_content }.</p><b>좋아요:${dto.re_like}</b>
														<a class="md-btn md-btn--outline-primary"
															href="javascript:read('${dto.re_num}')">read more </a>
													</div>
												</div>
												<!-- End / post -->
											</c:forEach>
										</c:otherwise>
									</c:choose>
									</div>
								</div>
							</div>
			</section>
			<!-- End / Section -->

			<div class="search">
				<form action="review/list" method="post">
					<select name="col">
						<option value="title"
							<c:if test="${col == 're_title' }">selected</c:if>>제목</option>
						<option value="cn"
							<c:if test="${col == 're_content' }">selected</c:if>>내용</option>
						<option value="total">전체출력</option>
					</select> <input type="search" name="word" required="required"
						value="${word}">
					<button>검색</button>
					<button type="button" onclick="location.href='./create'">등록</button>
				</form>
			</div>

		</div>
		<!-- End / Content-->


	</div>
	<!-- Vendors-->
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/imagesloaded/imagesloaded.pkgd.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/isotope-layout/isotope.pkgd.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/jquery-one-page/jquery.nav.min.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/jquery.easing/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/jquery.matchHeight/jquery.matchHeight.min.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/masonry-layout/masonry.pkgd.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/jquery.waypoints/jquery.waypoints.min.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/swiper/swiper.jquery.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/menu/menu.js"></script>
	<script type="text/javascript"
		src="../css/css_review/assets/vendors/typed/typed.min.js"></script>
	<!-- App-->

	<script type="text/javascript"
		src="../css/css_review/assets/js/main.js"></script>
</body>
</html>