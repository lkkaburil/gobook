<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
function nlist(){
	var url = "./notice.list.jsp";
	location.href = url;	
}

</script>
<title>notice</title>
</head>
<body>
<h3>정말 삭제하시겠습니까 ?</h3>

<input type="button" class="btn btn-Default btn-md" onclick="nlist()" value='삭제'/>
<input type="button" class="btn btn-Default btn-md" onclick="history.back()" value='취소'/>
</body>
</html>