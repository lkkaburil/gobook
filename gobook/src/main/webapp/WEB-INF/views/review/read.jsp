<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
function fileDown(filename) {
	var url ="${root}/download";
	url += "?filename="+filename;
	url += "&dir=/storage_b";
	location.href = url;
}
function mupdate(re_num){
	var url ="./update";
	url +=  "?re_num="+re_num;
	url += "&oldfile=${dto.filename}"; 
	url += "&col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";

	location.href=url;
	}
	function mdel(re_num){
	var url ="./delete";
	url += "?re_num="+re_num;
	url += "&oldfile=${dto.filename}";
	url += "&col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";

	location.href=url;
	}
	function mlist(re_num){
		var url = "./list";
		url += "?re_num="+re_num;
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href=url;
	}
	</script> 

</script>
<link href="../css/style.css" rel="Stylesheet" type="text/css" />

<style type="text/css">
* {
	font-family: gulim;
	font-size: 20px;
}

hr {
	text-align: center;
	border: 1px solid #AAAAAA;
	width: 50%;
}

</style>
</head>
<body>
 
	<DIV class="title">조회</DIV>


	<TABLE>
		<TR>
			<TH>제목</TH>
			<TD>${dto.re_title}</TD>
		</TR>
		<TR>
			<TH>내용</TH>
			<TD>${dto.re_content}</TD>
		</TR>
		<TR>
			<TH>조회수</TH>
			<TD>${dto.re_count }</TD>
		</TR>
		<TR>
			<TH>좋아요</TH>
			<TD>${dto.re_like }</TD>
		</TR>
		<TR>
			<TH>등록날짜</TH>
			<TD>${dto.re_wdate }</TD>
		</TR>
		<TR>
			<TH>파일명</TH>
			<TD><c:choose>
					<c:when test="${empty dto.filename}">
      		파일없음
      	</c:when>
					<c:otherwise>
						<a href="javascript:fileDown('${dto.filename }')">${dto.filename }(${dto.filesize })</a>
					</c:otherwise>
				</c:choose></TD>
		</TR>
	</TABLE>
<center>
						<DIV class='bottom'>

							<input type='button' value='추천' onclick="">
							<input type='button' value='LIST' onclick="mlist(${dto.re_num})">
							<input type='button' value='UPDATE'onclick="mupdate(${dto.re_num})"> 
							<input type='button'value='DELETE' onclick="mdel(${dto.re_num})">
						</DIV>

	<hr>
<%-- 	<c:forEach var="rdto" items="${rlist}">
		<div class="rlist">
			${rdto.id}<br>
			<p>${rdto.content }</p>
			${rdto.regdate}

			<c:if test="${sessionScope.id==rdto.id}">
				<span style="float: right">
				 <a	href="javascript:rupdate('${rdto.rnum }','${rdto.content }')">수정</a>
					<a href="javascript:rdelete('${rdto.rnum}')">삭제</a>
				</span>
			</c:if>
		</div>
	</c:forEach>
 --%>
</body>
</html>
