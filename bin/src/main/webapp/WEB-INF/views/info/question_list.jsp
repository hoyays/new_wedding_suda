<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>웨딩수다</title>
<meta name="description" content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">
<meta name="keywords" content="베리굿웨딩, 웨딩홀, 스드메, 결혼계산기, 스드메패키지, 스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 셀프웨딩, 하우스웨딩, 서울웨딩홀, 강남구웨딩홀, 송파구웨딩홀, 서초구웨딩홀, 웨딩스튜디오, 웨딩드레스, 예식장, 웨딩박람회, 2018웨딩박람회, 결혼박람회, 서울웨딩페어, 웨딩페어, 2018웨딩박람회일정, 서울웨딩박람회, 서울웨딩페어박람회, 웨딩박람회일정, 결혼박람회일정, 웨딩플래너, 웨딩페어박람회, 2018서울웨딩박람회, 셀프웨딩드레스, 2018결혼박람회, 다이렉트웨딩, 2018웨딩페어, 스드메패키지비용, 서울결혼박람회, 웨딩결혼박람회, 결혼준비, 2018년웨딩박람회, 웨딩드레스대여, 웨딩업체, 결혼준비순서, 웨딩, 혼수박람회, 결혼준비체크리스트, 예물반지, 예물세트, 셀프웨딩, 결혼준비리스트, 결혼식준비, 스드메등급표, 스드메비용, 웨딩드레스샵, 웨딩드레스쇼핑몰, 웨딩컨설팅, 웨딩플레너비용, 혼수가전제품, 가구박람회, 스드메견적표, 스드메박람회, 웨딩패키지, 웨딩플래너추천, 웨딩플레너, 2018년웨딩박람회일정, 웨딩드레스박람회, 서울웨딩박람회, 결혼식박람회, 드메패키지, 서울결혼박람회일정, 결혼일정, 웨딩페어후기, 셀프웨딩박람회, 예물박람회, 예물시계, 웨딩링, 웨딩스드메, 웨딩혼수박람회, 작은결혼식, 2018년결혼박람회, 결혼웨딩박람회, 결혼준비카페, 결혼커플링, 소규모웨딩, 서울웨딩, 셀프웨딩소품, 셀프웨딩촬영, 스드메추천, 신부예물, 알뜰결혼준비, 웨딩다이어리, 웨딩드레스대여가격">
<meta name="naver-site-verification" content="5d3ca3c5d4a61a4fcdde9c26a84db72bd3a56255">
<meta property="og:type" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,신혼여행,예물">
<meta property="og:title" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,웨딩박람회,신혼여행,예물">
<meta property="og:site_name" content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">
<meta property="og:description" content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">
<meta property="og:image" content="http://verygoodwedding.co.kr/images/main_logo.png">
<meta property="og:url" content="http://verygoodwedding.co.kr">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,신혼여행,예물">
<meta name="twitter:site" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,신혼여행,예물">
<meta name="twitter:image" content="http://verygoodwedding.co.kr/images/main_logo.png">
<meta name="twitter:description" content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">

<link rel="stylesheet" href="/css/reset.css" type="text/css">
<link rel="stylesheet" href="/css/main.css?ver=1" type="text/css">
<link rel="stylesheet" href="/css/sub.css?ver=1" type="text/css">
<link rel="stylesheet" href="/css/sub_detail.css?ver=1" type="text/css">
<!--<link rel="stylesheet" href="../fonts/spoqahansansregular.css?ver=1" type="text/css">-->
<link rel="stylesheet" href="../fonts/NanumBarunGothic.css?ver=1" type="text/css">
<link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.custom.css">


<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/js/document.on.js"></script>
<script type="text/javascript" src="/js/prog.js"></script>
<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript">

	function questionLoginCheck() {
		if(${session_flag == null || session_flag == 'fail' }) {
			alert('로그인 후 이용 가능합니다.');
			location.href="../member/login";
			return false;
		}else {
			location.href="./question_writeView";
		}
		
		
	}
</script>
<!--접속유입통계-->	

<!--접속유입통계-->
<script language="javascript">

</script>

</head>
<body>
<div class="wrap">
	<jsp:include page="../include/header.jsp">
    <jsp:param name="category" value="product1" />
</jsp:include>
<div class="m_bx_wrap">
     
	<script type="text/javascript" src="/js/jssor.slider.min.js"></script>
	<script type="text/javascript">
        jssor_1_slider_init = function() {            
            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Opacity:2}
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
			  $SlideDuration: 800,			 
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },			  

              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);            
            
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);           
        };
    </script>	
	<style>		
		.jssorb05{position:absolute}.jssorb05 div,.jssorb05 div:hover,.jssorb05 
		
		no-repeat;overflow:hidden;cursor:pointer}.jssorb05 div{background-position:-7px -7px}.jssorb05 div:hover,.jssorb05 .av:hover{background-position:-37px -7px}.jssorb05 .av{background-position:-67px -7px}.jssorb05 .dn,.jssorb05 .dn:hover{background-position:-97px -7px}.jssora22l,.jssora22r{display:block;position:absolute;width:40px;height:58px;cursor:pointer;background:url('/images/a22.png') center center no-repeat;overflow:hidden}.jssora22l{background-position:-10px -31px}.jssora22r{background-position:-70px -31px}.jssora22l:hover{background-position:-130px -31px}.jssora22r:hover{background-position:-190px -31px}.jssora22l.jssora22ldn{background-position:-250px -31px}.jssora22r.jssora22rdn{background-position:-310px -31px}
	</style>
	<div id="jssor_1" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 1287px; height: 220.077px; overflow: hidden; visibility: visible;" jssor-slider="true">			
		
				
		
		
	<div style="position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; transform-origin: 0px 0px; transform: scale(0.6435);"><div class="" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: visible; visibility: visible; display: block;"><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="position: absolute; z-index: 0; pointer-events: none;"></div></div><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; background-color: rgb(0, 0, 0); opacity: 0; display: none;"></div>
		<div class="sub_link_menu_wrap" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; overflow: hidden;"><img class="bg_img" data-u="image" src="http://vgood.co.kr/admin/contentsImg/homepage/201803/story.jpg" border="0" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; z-index: 1000; display: none;"></div></div>			
		</div><div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 6px; width: 16px; height: 16px; left: 992px;" data-autocenter="1">			
			
		<div data-u="prototype" style="width: 16px; height: 16px; position: absolute; left: 0px; top: 0px;" class="av"></div></div><span data-u="arrowleft" class="jssora22l" style="top: 142px; left: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span><span data-u="arrowright" class="jssora22r" style="top: 142px; right: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span></div></div></div>
	<script>
		jssor_1_slider_init();
	</script>

<div class="sub_link_box">
	<div class="sub_link_menu">
		<span id="sub_Color_f"><a href="/community/notice_list.asp">공지사항</a></span>
        <span id="sub_Color_f" class="sub_under_bar"><a href="/community/board_list.asp">신혼여행 문의게시판</a></span>
		<span id="sub_Color_f"><a href="/community/after_list.asp">웨딩후기</a></span>
    </div>
</div>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">신혼여행 문의게시판</span>
        <span class="title_detail">신혼여행 문의게시판입니다.</span>
    </div>
</div>

<script language="javascript">
$(document).ready(function() {	
	/* $('#regist_btn').click(function() {
		if ('')
		{
			top.location.href="board_flag.asp";
		}else {
			top.location.href="/membership/log_in.asp?url=/community/board_flag.asp";
		}
	}); */

	
	/* $('a[id=screct_link]').click(function() {
		
		if(${session_name eq map.queDto.bname || session_userid eq 'admin'}) {
			location.href="question_contentView?bid=${queDto.bid }&page=${map.page}&search=${map.search}";
		}else {
			alert("비밀글은 본인이 작성한 글만 확인이 가능합니다!");	
			return false;
		}
	}); */
});

function go_page(n)
{
	document.board_bottom_bx.pageNo.value = n;
	document.board_bottom_bx.submit();
}    
</script>
<div class="cm_board_normal">
	<table summary="게시판목록">
	<colgroup>
		<col width="8%"><col width="*"><col width="12%"><col width="12%"><col width="7%">
	</colgroup>
    <thead>
		<tr>
			<th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">작성일</th>
            <th scope="col">조회수</th>
        </tr> 
    </thead> 
	<tbody>
     
     		<!-- 반복 시작 -->
     		<c:forEach var="queDto" items="${map.q_list }">
			<tr>
				<td style="font-size:14px;">${queDto.bid }</td>        
			    <td class="title"><span class="icon">
			    <c:forEach begin="1" end="${queDto.bindent }">
      		<img src="../images/icon_reply.png">
      	</c:forEach>
			    <img src="../images/board_ic_secret.gif" alt="비밀글"></span><a href="question_contentView?userid=${queDto.userid }&bid=${queDto.bid }&page=${map.page}&search=${map.search}" id="screct_link" class="view_article" style="cursor:pointer;">${queDto.btitle }&nbsp;
			<%--     <c:choose>
			    	<c:when test="${queDto.bstep > 0 }">
			    		<span style="color:#c60e0e;">&nbsp;( ${queDto.bstep } )</span></a>  
			    	</c:when>
			    </c:choose> --%> 
                </td>        
                <td style="font-size:14px;">${queDto.bname }</td>
                <td style="font-size:14px;"><fmt:formatDate value="${queDto.bdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td style="font-size:14px;">${queDto.bhit }</td>
			</tr>
			</c:forEach>
			<!-- 반복 끝 -->
              
    </tbody> 
	</table>
</div>
<!-- 페이지번호 -->
<div id="board_link_wrap">
		<div id="board_link_num">
			<c:choose>
				<c:when test="${map.page <= 1 }">
				</c:when>
				<c:otherwise>
            		<a href="question_list?search=${map.search }&page=1" title="1페이지">&lt;&lt;</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${map.page <= 1 }">
				</c:when>
				<c:otherwise>
            		<a href="question_list?search=${map.search }&page=${map.page-1}" title="이전">&lt;</a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 번호 반복 -->
			<c:forEach var="nowPage" begin="${map.startPage}" end="${map.endPage }">
				<c:choose>
			          <c:when test="${map.page==nowPage}">
						<span style="font-size:16px;">${nowPage }</span>
			          </c:when>
			          <c:otherwise>
			             <a href="question_list?search=${map.search }&page=${nowPage}" style="font-size:16px;">${nowPage }</a>
			          </c:otherwise>
			        </c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${map.page >= map.maxPage }">
				</c:when>
				<c:otherwise>
					<a href="question_list?search=${map.search }&page=${map.page+1}" title="다음" class="num_right">&gt;</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${map.page >= map.maxPage }">
				</c:when>
				<c:otherwise>
					<a href="question_list?search=${map.search }&page=${map.maxPage}" title="끝페이지" class="num_right">&gt;&gt;</a>
				</c:otherwise>
			</c:choose>
        </div>
        
<div id="board_write">
        <input class="board_write_btn" type="button" value="문의하기" id="regist_btn" style="cursor:pointer;font-family: NanumBarunGothic;font-size:15px;" onclick="questionLoginCheck()">
    </div>
</div>

<div id="board_bottom">
	<form id="board_bottom_bx" name="board_bottom_bx" method="get" action="./question_list">
    <input type="hidden" name="pageNo">	
		<ul>        	        
            <li class="name_title"><input type="text" name="search" id="search" class="name_view_wrap" value="" style="padding-left:5px;"><input type="image" class="name_view_zoom" src="../images/index_zoom02.png"></li>
        </ul>    	
    </form>
</div>


<script language="JavaScript" type="text/JavaScript">

</script>

<script type="text/javascript">

</script>
<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>
    </div></body></html>