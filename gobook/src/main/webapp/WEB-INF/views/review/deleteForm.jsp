<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp" %>
<%String root=request.getContextPath(); %>

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<script type="text/javascript">
function blist() {
	var url = "./list";
	location.href= url;
}
</script>

</head> 
<body>
	<c:choose>
		<c:when test="${flag }">
			 <div class="content">
			 답변이 있는 부모글이므로 삭제할수 없습니다
			 <DIV class='bottom'>
			    <input type='button' value='목록' onclick="blist()">
			    <input type='button' value='뒤로가기' onclick="history.back()">
			  </DIV>
			  </div>
		</c:when>
		<c:otherwise>
			<DIV class="title">비번입력</DIV>
			 
			<FORM name='frm' method='POST' action='delete'>
			<input type="hidden" name = "nowPage" value="${param.nowPage}">
			<input type="hidden" name = "col" value="${param.col}">
			<input type="hidden" name = "word" value="${param.word}">
			<input type="hidden" name = "bbsno" value="${param.bbsno}">
			<input type="hidden" name = "oldfile" value="${param.oldfile}">
			  <TABLE>
			    <TR>
			      <TH>패스워드</TH>
			      <TD><input type="password" name="passwd" placeholder="비번입력" required="required"></TD>
			    </TR>
			  </TABLE>
			  
			  <DIV class='bottom'>
			    <input type='submit' value='삭제'>
			    <input type='button' value='목록' onclick="blist()">
			  </DIV>
			</FORM>
		</c:otherwise>
	</c:choose>
 
</body>
</html> 
