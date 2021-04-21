<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시판</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="/css/admin/style.css">
  <link rel="stylesheet" href="/css/admin/notice_list.css">
</head>
<body>
<header>
    <div id="header-left">
      웨딩수다 <span></span> 관리자페이지
    </div>
    <!-- <div id="header-right">
      <span>관리자 (GMT+9:00) Seoul</span>
      <img src="http://lmsenterprise2019.itmap.co.kr/_admin/image/logout.png" alt="">

      <table>
        <tr>
          <td class="select">
            <img src="http://lmsenterprise2019.itmap.co.kr/_admin/image/KOR.png" alt="">
            <span>한국어</span>
          </td>
          <td class="arrow">
            <div class="separator"></div>
            <span>▼</span>
          </td>
        </tr>
      </table>

      <table>
        <tr>
          <td class="select">
            <span>LMS 매뉴얼</span>
          </td>
          <td class="arrow">
            <div class="separator"></div>
            <span>▼</span>
          </td>
        </tr>
      </table>
    </div> -->
  </header>

  <nav>
    <ul>
      <li><span class="nav1">&emsp;</span><a href="./admin_memberStatus"> 회원관리</a></li>
      <li><span class="nav2">&emsp;</span> 상품관리</li>
      <li><span class="nav3">&emsp;</span> 공지사항</li>
      <li><span class="nav4">&emsp;</span> 이벤트</li>
    </ul>
  </nav>

<section>
    <h1>전체 회원 목록</h1>
    <div class="wrapper">
      <form action="/search" name="search" method="post">
        <select name="category" id="category">
          <option value="0">전체</option>
          <option value="title">제목</option>
          <option value="content">내용</option>
        </select>

        <div class="title">
          <input type="text" size="16">
        </div>
  
        <button type="submit"><i class="fas fa-search"></i></button>
      </form>
    </div>
	<div>
    <table id="board_table">
      <colgroup>
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>닉네임</th>
        <th>성별</th>
        <th>포인트</th>
        <th>모바일</th>
        <th>이메일</th>
        <th>결혼예정일</th>
        <th>구분</th>
        <th>회원가입일</th>
      </tr>
      <!-- 내용부분 -->
      <!-- 반복 시작 -->
      <c:forEach var="memberDto" items="${map.list}">
	      <tr>
	        <td>${memberDto.userid}</td>
	        <td>${memberDto.name}</td>
	        <td>${memberDto.nickName}</td>
	        <td>
        		<c:choose>
					<c:when test="${memberDto.sex eq 'W'}">
						신부
					</c:when>
					<c:otherwise>
						신랑
					</c:otherwise>
				</c:choose>
	        </td>
	        <td>${memberDto.point}</td>
	        <td>${memberDto.mobile}</td>
	        <td>${memberDto.email}</td>
	        <td>${memberDto.cusEnter}</td>
	        <td>
	        	<c:choose>
					<c:when test="${memberDto.businessTy eq 'company'}">
						<span class="table-notice">기업회원</span>
					</c:when>
					<c:otherwise>
						일반회원
					</c:otherwise>
				</c:choose>
	        </td>
	        <td>${memberDto.sign_up_date}</td>
	      </tr>
      </c:forEach>
      <!-- 반복 끝 -->
      
    </table>
    </div>
    
    

<ul class="page-num">
      <a href="./admin_memberStatus?page=1&category=${map.category}&search=${map.search}"><li class="first"></li></a>   <!-- 제일 첫 페이지로 -->
      <c:choose>
      	<c:when test="${map.page <= 1}">
			<li class="prev"></li>	    <!-- 이전 페이지로(링크없음) -->
      	</c:when>
      	<c:otherwise>
	      <a href="./admin_memberStatus?page=${map.page-1}&category=${map.category}&search=${map.search}"><li class="prev"></li></a>    <!-- 이전 페이지로(링크있음) -->
      	</c:otherwise>
      </c:choose>
      
      
      <!-- 번호 반복 시작 -->
      <c:forEach var="nowPage" begin="${map.startPage}" end="${map.endPage}">
      	<c:choose>
      		<c:when test="${nowPage == map.page}">
      			<li class="num"><div>${nowPage}</div></li>
      		</c:when>
      		<c:otherwise>
		      <a href="./admin_memberStatus?page=${nowPage}&category=${map.category}&search=${map.search}"><li class="num"><div>${nowPage}</div></li></a>
      		</c:otherwise>
      	</c:choose>
      </c:forEach>
      <!-- 번호 반복 끝 -->
      
      
      <c:choose>
      	<c:when test="${map.page >= map.maxPage}">
      		<li class="next"></li>    <!-- 다음 페이지로(링크없음) -->
      	</c:when>
      	<c:otherwise>
		      <a href="./admin_memberStatus?page=${map.page+1}&category=${map.category}&search=${map.search}"><li class="next"></li></a>     <!-- 다음 페이지로(링크있음) -->
      	</c:otherwise>
      </c:choose>
      
      <a href="./admin_memberStatus?page=${map.maxPage}&category=${map.category}&search=${map.search}"><li class="last"></li></a>   <!-- 제일 마지막 페이지로 -->
    </ul>

    <!-- <a href="write_view.jsp"><div class="write">쓰기</div></a> -->
    <a href="./admin_logout"><div class="write">관리자 로그아웃</div></a>
  </section>

</body>
</html>