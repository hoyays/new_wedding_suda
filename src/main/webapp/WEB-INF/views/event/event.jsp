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
        
        $(document).ready(function() {	
        	$('#loginCheck').click(function() {
        		alert('로그인 후 이용가능합니다.')
        		top.location.href="./member/login";
        		
        	});	
        });
        
    </script>	
	<style>		
		.jssorb05{position:absolute}.jssorb05 div,.jssorb05 div:hover,.jssorb05 
		
		no-repeat;overflow:hidden;cursor:pointer}.jssorb05 div{background-position:-7px -7px}.jssorb05 div:hover,.jssorb05 .av:hover{background-position:-37px -7px}.jssorb05 .av{background-position:-67px -7px}.jssorb05 .dn,.jssorb05 .dn:hover{background-position:-97px -7px}.jssora22l,.jssora22r{display:block;position:absolute;width:40px;height:58px;cursor:pointer;background:url('/images/a22.png') center center no-repeat;overflow:hidden}.jssora22l{background-position:-10px -31px}.jssora22r{background-position:-70px -31px}.jssora22l:hover{background-position:-130px -31px}.jssora22r:hover{background-position:-190px -31px}.jssora22l.jssora22ldn{background-position:-250px -31px}.jssora22r.jssora22rdn{background-position:-310px -31px}
	</style>
	<div id="jssor_1" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 1348px; height: 230.508px; overflow: hidden; visibility: visible;" jssor-slider="true">			
		
				
		
		
	<div style="position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; transform-origin: 0px 0px; transform: scale(0.674);"><div class="" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: visible; visibility: visible; display: block;"><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="position: absolute; z-index: 0; pointer-events: none;"></div></div><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; background-color: rgb(0, 0, 0); opacity: 0; display: none;"></div>
		<div class="sub_link_menu_wrap" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; overflow: hidden;">
		<img class="bg_img" data-u="image" src="../images/mall.jpg" border="0" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; z-index: 1000; display: none;"></div></div>			
		</div><div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 6px; width: 16px; height: 16px; left: 992px;" data-autocenter="1">			
			
		<div data-u="prototype" style="width: 16px; height: 16px; position: absolute; left: 0px; top: 0px;" class="av"></div></div><span data-u="arrowleft" class="jssora22l" style="top: 142px; left: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span><span data-u="arrowright" class="jssora22r" style="top: 142px; right: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span></div></div></div>

<div class="sub_link_box">
	<div class="sub_link_menu">
		<span id="sub_Color_f" class="sub_under_bar"><a href="./event">이벤트</a></span>
				<c:if test="${session_userid =='admin' }"> 
			<span id="sub_Color_f"><a href="./event_writeview">이벤트 등록 페이지</a></span>
		 </c:if> 
    </div>
</div>

<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">이벤트</span>
        <span class="title_detail">결혼 준비의 새로운 기준 웨딩수다와 함께 하세요!</span>
    </div>
</div>

<div id="event_img_wrap">
	<div id="event_img_box01">
	
	
		<c:forEach var="dto" items="${map.list}">	
		<div id="event_num01">
			<div id="event_numBox">
				<p class="img_take01">
				<a href="/event_view?bid=${dto.bid }">
				<img src="/upload/${dto.fileName}" alt="미니스트로 특별프로모션" width="378" height="224"></a>
				</p>
            </div>
            <span class="event_left">
				<p class="img_take02">${dto.btitle }</p>
                <p class="img_take03" style="font-size:12px;color:#666464;">${dto.bcontent }</p>
			</span>
            <span class="event_right"></span>
        </div>
		
		</c:forEach>
		
		<div id="event_num01">
			<div id="event_numBox">
				<p class="img_take01"><a href="event_detail.asp?idx=92"><img src="http://vgood.co.kr/admin/contentsImg/board/202104/very good wedding icon image (2).jpg" alt="삼성전자 프리미엄스토어 그랜드오픈매장이벤트" width="378" height="224"></a></p>
            </div>
            <span class="event_left">
				<p class="img_take02">삼성전자 프리미엄스토어 그랜드오픈매장이벤트</p>
                <p class="img_take03" style="font-size:12px;color:#666464;">이벤트 기간 : 2021-04-02 ~ 2021-04-30</p>
			</span>
            <span class="event_right"></span>
        </div>
		
		<div id="event_num01">
			<div id="event_numBox">
				<p class="img_take01"><a href="event_detail.asp?idx=136"><img src="http://vgood.co.kr/admin/contentsImg/board/202104/KakaoTalk_20210402_114735691.jpg" alt="바톤 4월 한정 프로모션" width="378" height="224"></a></p>
            </div>
            <span class="event_left">
				<p class="img_take02">바톤 4월 한정 프로모션</p>
                <p class="img_take03" style="font-size:12px;color:#666464;">380-274 이미지 사이즈</p>
			</span>
            <span class="event_right"></span>
        </div>
		
			<div id="after_return">
			<c:if test="${session_userid=='admin'}">
			<span class="after_return_txt_write"><a href="event_writeview" id="regist_btn" style="cursor:pointer;">글쓰기</a></span>
			</c:if>
			</div>
		
			
	</div>
</div>




<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>




</div></div></body></html>