<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<meta charset="utf-8">
<title>웨딩수다</title>

<link rel="stylesheet" href="/css/reset.css" type="text/css">
<link rel="stylesheet" href="/css/main.css" type="text/css">
<link rel="stylesheet" href="/css/sub.css" type="text/css">
<link rel="stylesheet" href="/css/sub_detail.css" type="text/css">
<link rel="stylesheet" href="/fonts/NanumBarunGothic.css" type="text/css">
<link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.custom.css">
<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/js/document.on.js"></script>
<script type="text/javascript" src="/js/prog.js"></script>
<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
</head>
<body>
<c:choose>
	<c:when test="${session_flag eq 'success'}">

<div class="wrap">
<!-- 헤더 너을거임  -->

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
	<div id="jssor_1" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 1348px; height: 230.508px; overflow: hidden; visibility: visible;" jssor-slider="true">			
		
				
		
		
	<div style="position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; transform-origin: 0px 0px; transform: scale(0.674);"><div class="" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: visible; visibility: visible; display: block;"><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="position: absolute; z-index: 0; pointer-events: none;"></div></div><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; background-color: rgb(0, 0, 0); opacity: 0; display: none;"></div>
		<div class="sub_link_menu_wrap" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; overflow: hidden;"><img class="bg_img" data-u="image" src="../images/story.jpg
		" border="0" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; z-index: 1000; display: none;"></div></div>			
		</div><div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 6px; width: 16px; height: 16px; left: 992px;" data-autocenter="1">			
			
		<div data-u="prototype" style="width: 16px; height: 16px; position: absolute; left: 0px; top: 0px;" class="av"></div></div><span data-u="arrowleft" class="jssora22l" style="top: 142px; left: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span><span data-u="arrowright" class="jssora22r" style="top: 142px; right: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span></div></div></div>

<div class="sub_link_box">
	<div class="sub_link_menu">
		<span id="sub_Color_f" class="sub_under_bar"><a href="./inquiry_main">지식인</a></span>
        <!-- 
        <span id="sub_Color_f"><a href="/noticeboard/board_list">문의게시판</a></span>
		<span id="sub_Color_f"><a href="/noticeboard/after_list">웨딩후기</a></span>
		 -->
    </div>
</div>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">지식인</span>
        <span class="title_detail">결혼 준비와 관련된 질문과 답변을 자유롭게 올려주세요!</span>
    </div>
</div>



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
		<!-- 내용 반복 시작 -->
		<c:forEach var="dto" items="${map.list}">
     
			<tr>
				<td style="font-size:14px;">${dto.bid}</td>
				<td class="title">
				<span>
				<c:forEach begin="1" end="${dto.bindent}">
					└─&nbsp;Re:&nbsp;
				</c:forEach> 
				</span>
				
				<span>
					<a href="./inquiry_content_view?bid=${dto.bid}&page=${map.page}&search=${map.search}" class="view_article" style="font-size:14px; float:none;">
					${dto.btitle}
					
					<!-- 답변채택 알림처리 -->
					<c:if test="${dto.replycheck eq 1}">
						<span><img alt="" src="/images/point_icon.png" width="22px" height="22px"></span>
					</c:if>
					
					<!-- 새글 알림 처리 -->
					<c:choose>
						<c:when test="${dto.clickcheck eq 0}">
							<span><img alt="" src="/images/new_icon.png" width="22px" height="22px"></span>
						
						</c:when>
					</c:choose>
					
					
					
					</a>
				</span>
               	
               </td>        
               <td style="font-size:14px;">${dto.userid}</td>
               <td style="font-size:14px;">${dto.bdate}</td>
               <td style="font-size:14px;">${dto.bhit}</td>
			</tr>
     
			
        </c:forEach>      
		<!-- 내용 반복 끝 -->
    </tbody> 
	</table>
</div>



<div id="board_link_wrap">
	
		<div id="board_link_num"> 		
            <a href="./inquiry_main?page=1&search=${map.search}" title="1 페이지">&lt;&lt;</a>
            <c:choose>
            	<c:when test="${map.page <= 1}">
					<a>&lt;</a>    <!-- 현재페이지가 1페이지 이하일 경우 링크없음 -->
            	</c:when>
				<c:otherwise>
					<a href="./inquiry_main?page=${map.page-1}&search=${map.search}">&lt;</a>   
				</c:otherwise>            	
            </c:choose>
            
            <!-- 페이지 넘버링 반복시작 -->
            <c:forEach var="nowPage" begin="${map.starPage}" end="${map.endPage}">
            	<c:choose>
            		<c:when test="${nowPage == map.page}">
						<span style="font-size:16px;">${nowPage}</span>
            		</c:when>
            		<c:when test="${nowPage > 0 && nowPage != map.page}">
						<a href="./inquiry_main?page=${nowPage}&search=${map.search}">${nowPage}</a>
            		</c:when>
            	</c:choose>
            </c:forEach>
            <!-- 페이지 넘버링 반복끝 -->

<c:choose>
	<c:when test="${map.page} >= ${map.maxPage}">
		<a title="다음" class="num_right">&gt;</a>   <!-- 현재 페이지가 maxPage 이상일 경우 링크 없음 -->
	</c:when>
	<c:otherwise>
		<a href="./inquiry_main?page=${map.page+1}&search=${map.search}" title="다음" class="num_right">&gt;</a>
	</c:otherwise>
</c:choose>
<a href="./inquiry_main?page=${map.maxPage}&search=${map.search}" title="${map.maxPage} 페이지" class="num_right">&gt;&gt;</a>
           
        </div>
		 	
	<div id="board_write">
        <a href="./inquiry_write_view"><input class="board_write_btn" type="button" value="글쓰기" id="regist_btn" style="cursor:pointer;font-family: NanumBarunGothic;font-size:15px;"></a>
    </div>
</div>




<div id="board_bottom">
	<form id="board_bottom_bx" name="board_bottom_bx" method="post" action="./inquiry_main">
    <input type="hidden" name="pageNo">	
		<ul>        	        
            <li class="name_title"><input type="text" name="search" id="search" class="name_view_wrap" value="${map.search}" style="padding-left:5px;"><input type="image" class="name_view_zoom" src="../images/index_zoom02.png"></li>
        </ul>    	
    </form>
</div>








<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>



</div></div>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('로그인 후 이용해 주시기 바랍니다!');
			location.href='/member/login';
		</script>
	</c:otherwise>
</c:choose>
</body></html>