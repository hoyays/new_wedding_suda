<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<c:choose>
			<c:when test="${admin_session_flag == null || admin_session_flag == 'fail' }" >
				<script type="text/javascript">
					alert('아이디 또는 비밀번호가 일치하지 않습니다.! 다시 입력해주세요.!');
					location.href="./admin_login";
				</script>
			</c:when>
			<c:otherwise>
				<script type="text/javascript">
					alert('로그인 성공!');
					location.href="./admin_memberStatus";   //관리자 회원관리 페이지로
				</script>
			</c:otherwise>
		</c:choose>
		<meta charset="UTF-8">
		<title>login_check</title>
	</head>
	<body>
		
	</body>
</html>