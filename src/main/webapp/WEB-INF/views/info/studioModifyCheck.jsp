<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>글쓰기 체크</title>
		<script type="text/javascript">
			if(${map.ModifyCheck == 1}) {
				alert('수정이 완료되었습니다.');
				location.href="./studio_list";
			}else {
				alert('수정이 정상적으로 이루어지지 않았습니다.');
				location.href="./studio_modifyView";
			}
		</script>
	</head>
	<body>
	
	</body>
</html>