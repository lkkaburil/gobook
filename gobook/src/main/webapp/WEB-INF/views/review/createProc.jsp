<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp" %>
<%String root=request.getContextPath(); %>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
	function blist() {
	var url = "./list.do";
	location.href = url;
}
</script>
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<link href="${root}/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<body>

<DIV class="content">
<c:choose>
	<c:when test="${flag }">
	등록했습니다
	</c:when>
	<c:otherwise>
	글등록 실패했습니다
	</c:otherwise>
</c:choose>
</DIV>
 
  <DIV class='bottom'>
    <input type='button' value='목록' onclick='blist()'>
  </DIV>
  
</body>
</html> 

