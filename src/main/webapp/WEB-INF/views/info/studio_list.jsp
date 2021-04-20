<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<meta charset="utf-8">
<title>웨딩수다(스튜디오 리스트)</title>

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
<script type="text/javascript" src="/js/jquery-ui.js"></script>
</head>
<body>
<div class="wrap">
<!-- 헤더 너을거임  -->

<jsp:include page="../include/header.jsp">
    <jsp:param name="category" value="product1" />
</jsp:include>

<div class="m_bx_wrap">
     
	<script type="text/javascript" src="/js/jssor.slider.min.js"></script>
	<script type="text/javascript">
	
	//검색시 값 넘기기
	function searchSubmit() {
		document.hall_name.submit();
	}
	
	
	
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
		<span id="sub_Color_f" class="sub_under_bar"><a href="/info/studio_list">스튜디오</a></span>
        <span id="sub_Color_f"><a href="/info/dress_list">드레스</a></span>
		<span id="sub_Color_f"><a href="/info/hairMakeUp_list">헤어메이크업</a></span>
		<span id="sub_Color_f"><a href="./travel_list">신혼여행</a></span>
    </div>
</div>

<!-- 아래 부분 내용 느면됨 -->
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">스튜디오</span>
		<span class="title_detail">결혼 준비의 새로운 기준 웨딩수다와 함께 하세요!</span>
		<div class="input_wrap">
		   	<form name="hall_name" id="hall_name2" method="post" action="./studio_list">
	            <input type="text" id="search" name="search" style="padding-left:3px;">
				<p class="wedding_hall_serch2"><img src="../images/index_zoom02.png" id="search_btn" style="cursor:pointer;" alt="검색" onclick="searchSubmit()"></p>
			</form>
		</div>
	</div>
</div>

<div class="col_list_wrap">
	<div id="_collection_list">	
		<div id="collection_box01">
			
			<c:forEach var="stuDto" items="${map.list }" >
				<div class="col_one_bx">
			        <!-- 반복시작 -->
					<div class="col_img_wrap">
						<a href="studio_contentView?infoId=${stuDto.infoId }&page=${map.page}&search=${map.search}"><p class="col_img_inbx"><img src="../upload/${stuDto.c_fileName }" alt="${stuDto.com_name }" width="378" height="248" id="pop_img_info" data="1118" style="cursor:pointer;"></p></a>
			            <div class="col_img_logo">
							<span><a href="studio_contentView?infoId=${stuDto.infoId }&page=${map.page}&search=${map.search}" id="pop_img_info" style="cursor: pointer;" class="col_bg" data="1118">상품보기</a></span>
							<span class="col_gal_ttx_color"><a href="${stuDto.c_onlineAddress }" id="consult_info" class="col_bg" style="">홈페이지</a></span>
						</div>
			        </div>
			        
					<div class="col_text_wrap">
						<span class="col_text_name" style="color:#000000;">${stuDto.com_name }</span>
						<!-- <p class="col_more_plus"><img src="../images/plus.png" alt="더보기" id="pop_img_info" data="1118" style="cursor:pointer;"></p> -->
					</div>
				</div>
			</c:forEach>
			<!-- 반복 끝 -->
			
	 	</div>     
	</div> 
</div>

<!-- 페이지번호 -->
<div id="board_link_wrap">
		<div id="board_link_num">
			<c:choose>
				<c:when test="${map.page <= 1 }">
				</c:when>
				<c:otherwise>
            		<a href="studio_list?search=${map.search }&page=1" title="1페이지">&lt;&lt;</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${map.page <= 1 }">
				</c:when>
				<c:otherwise>
            		<a href="studio_list?search=${map.search }&page=${map.page-1}" title="이전">&lt;</a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 번호 반복 -->
			<c:forEach var="nowPage" begin="${map.startPage}" end="${map.endPage }">
				<c:choose>
			          <c:when test="${map.page==nowPage}">
						<span style="font-size:16px;">${nowPage }</span>
			          </c:when>
			          <c:otherwise>
			             <a href="studio_list?search=${map.search }&page=${nowPage}" style="font-size:16px;">${nowPage }</a>
			          </c:otherwise>
			        </c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${map.page >= map.maxPage }">
				</c:when>
				<c:otherwise>
					<a href="studio_list?search=${map.search }&page=${map.page+1}" title="다음" class="num_right">&gt;</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${map.page >= map.maxPage }">
				</c:when>
				<c:otherwise>
					<a href="studio_list?search=${map.search }&page=${map.maxPage}" title="끝페이지" class="num_right">&gt;&gt;</a>
				</c:otherwise>
			</c:choose>
        </div>
        
<div id="board_write">
	<c:choose>
		<c:when test="${session_businessTy eq 'company' || session_userid eq 'admin'}">
        	<a href="studio_writeView"><input class="board_write_btn" type="button" value="상품등록" id="regist_btn" style="cursor:pointer;font-family: NanumBarunGothic;font-size:15px;"></a>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
    </div>
</div>






<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>



</div></div></body></html>