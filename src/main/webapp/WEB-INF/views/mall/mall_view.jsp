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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>
.modal{
display: none;
    vertical-align: middle;
    position: relative;
    z-index: 2;
    max-width: 500px;
    box-sizing: border-box;
    width: 90%;
    background: #fff;
    padding: 15px 30px;
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    -o-border-radius: 8px;
    -ms-border-radius: 8px;
    border-radius: 8px;
    -webkit-box-shadow: 0 0 10px #000;
    -moz-box-shadow: 0 0 10px #000;
    -o-box-shadow: 0 0 10px #000;
    -ms-box-shadow: 0 0 10px #000;
    box-shadow: 0 0 10px #000;
    text-align: left;
    }
    #loading { width: 100%; height: 100%; top: 0px; left: 0px; position: fixed; display: block; opacity: 0.7; background-color: #fff; z-index: 99; text-align: center; }
     #loading-image { position: absolute; top: 50%; left: 50%; z-index: 100; }

</style>
</head>
<body onload="init();">
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
		
		no-repeat;overflow:hidden;cursor:pointer}
		.jssorb05 div{background-position:-7px -7px}.jssorb05 div:hover,.jssorb05 
		.av:hover{background-position:-37px -7px}.jssorb05 .av{background-position:-67px -7px}
		.jssorb05 .dn,.jssorb05 .dn:hover{background-position:-97px -7px}.jssora22l,
		.jssora22r{display:block;position:absolute;width:40px;height:58px;cursor:pointer;background:url('/images/a22.png') center center no-repeat;overflow:hidden}.jssora22l{background-position:-10px -31px}
		.jssora22r{background-position:-70px -31px}.jssora22l:hover{background-position:-130px -31px}
		.jssora22r:hover{background-position:-190px -31px}.jssora22l.jssora22ldn{background-position:-250px -31px}
		.jssora22r.jssora22rdn{background-position:-310px -31px}
	</style>
	
	<script language="JavaScript">
	$(window).load(function() { $('#loading').hide(); });
	var sell_price;
	var amount;
	
	function init () {
		sell_price = document.form.sell_price.value;
		amount = document.form.amount.value;
		document.form.sum.value = sell_price;
		change();
	}
	
	function add () {
		hm = document.form.amount;
		sum = document.form.sum;
		hm.value ++ ;
	
		sum.value = parseInt(hm.value) * sell_price;
	}
	
	function del () {
		hm = document.form.amount;
		sum = document.form.sum;
			if (hm.value > 1) {
				hm.value -- ;
				sum.value = parseInt(hm.value) * sell_price;
			}
	}
	
	function change () {
		hm = document.form.amount;
		sum = document.form.sum;
	
			if (hm.value < 0) {
				hm.value = 0;
			}
		sum.value = parseInt(hm.value) * sell_price;
	}  
	
	
	function buyclick(){
		var x = $('#sum').val();
		
		if(${map.memberDto.point}>=x){
			alert('구매하시면 등록된 이메일로 발송됩니다.');
			alert(x+'포인트 차감됩니다.');
			if(confirm('등록된 이메일 주소는'+'${map.memberDto.email }'+'입니다.')==true){
				//$(window).load(function() { $('#loading').show(); });
				//$(window).load(function() { $('#loading').hide(); });
				location.href='./buy?btitle=${map.mallDto.btitle}&name=${map.memberDto.name}&userid=${map.memberDto.userid}&email=${map.memberDto.email}&usepoint='+x
				
			}else{
				return;
			} 
			
		}else{
			alert("포인트가 부족합니다. 포인트를 확인해주세요.")
			return;
		}
		
	}
	
	 
	</script>
	
	
	<div id="jssor_1" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 1348px; height: 230.508px; overflow: hidden; visibility: visible;" jssor-slider="true">			
		
				
		
		
	<div style="position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; transform-origin: 0px 0px; transform: scale(0.674);">
	<div class="" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: visible; visibility: visible; display: block;">
	<div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="position: absolute; z-index: 0; pointer-events: none;"></div>
	</div>
	<div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;">
	<div style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; background-color: rgb(0, 0, 0); opacity: 0; display: none;"></div>
		<div class="sub_link_menu_wrap" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; overflow: hidden;"><img class="bg_img" data-u="image" src="../images/mall.jpg" border="0" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; z-index: 1000; display: none;"></div></div>			
		</div><div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 6px; width: 16px; height: 16px; left: 992px;" data-autocenter="1">			
			
		<div data-u="prototype" style="width: 16px; height: 16px; position: absolute; left: 0px; top: 0px;" class="av"></div>
		</div>
		<span data-u="arrowleft" class="jssora22l" style="top: 142px; left: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span>
		<span data-u="arrowright" class="jssora22r" style="top: 142px; right: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span></div></div></div>

<div class="sub_link_box">
	<div class="sub_link_menu">
		<span id="sub_Color_f" class="sub_under_bar"><a href="/mall">포인트몰</a></span>
				<c:if test="${session_userid =='admin' }"> 
		<span id="sub_Color_f"><a href="./mall_writeView">물품 등록 페이지</a></span>
		 </c:if> 
    </div>
</div>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">포인트 몰</span>
        <span class="title_detail">결혼 준비의 새로운 기준 웨딩수다와 함께 하세요!</span>
    </div>
</div>
<!-- 내용부분  -->
<div class="honsu_wrap">
	
	<div class="honsu_bx">
		<div class="honsu_left_bx">
			<div class="honsu_bigpic" id="honsu_bigpic_958" style="position:relative;height:499px;">
				<span id="big_view_958"><img src="/upload/${map.mallDto.fileName }" onload="javascript:resize(this)" border="0" width="850" height="499"></span>
				<div style="position:absolute;top:0px;"></div>
			</div>
		</div>
        <div class="honsu_right_bx">
            <div class="honsu_mtop">     
				<span class="h_tx" style="font-size:21px;color:#067484;">${map.mallDto.btitle}</span>
            </div>			
            <div class="h_con_bx">
				<div class="h_detailtx" style="height:130px;overflow:auto;SCROLLBAR-DARKSHADOW-COLOR: #ffffff;scrollbar-BaseC-olor: #7391A2;SCROLLBAR-FACE-COLOR: #ffffff;SCROLLBAR-SHADOW-COLOR: #cbcbcb;SCROLLBAR-ARROW-COLOR: #cbcbcb;">
					<p style="font-size:13px;">${map.mallDto.bcontent}
                </div>
                <div style="height:10px;"></div>
				<p class="h_event_title">수량</p>
					<form name="form" method="post">
                <div class="h_eventtx" style="height:75px;overflow:auto;SCROLLBAR-DARKSHADOW-COLOR: #ffffff;scrollbar-BaseC-olor: #7391A2;SCROLLBAR-FACE-COLOR: #ffffff;SCROLLBAR-SHADOW-COLOR: #cbcbcb;SCROLLBAR-ARROW-COLOR: #cbcbcb;border:1px solid #579aa4;">
					
					수량 : <input type=hidden name="sell_price" value="${map.mallDto.point }">
					<input type="hidden" name="userid" id="userid" value="${map.memberDto.userid}">
					<input type="hidden" name="name" id="name" value="${map.memberDto.name}">
					<input type="hidden" name="btitle" id="btitle" value="${map.mallDto.btitle}">
					<input type="text" name="amount" value="1" size="3" onchange="change();">
					<input type="button" value=" + " onclick="add();">
					<input type="button" value=" - " onclick="del();"><br>
					
					차감 : <input type="text" name="sum" id="sum" size="11" readonly>Point
					
                </div>
				<div style="height:10px;"></div>
                <span class="h_link">
						<button type ="button" style="width:120px;height:34px;cursor:pointer;border:1px solid #d9d8d8;line-height:34px;font-size:17px;background-color:#fe4253;color:#ffffff;text-align:center;" onclick="buyclick()" >구매하기</button>
				</span>
				<div style="height:80px;"></div>
				<div class="h_eventtx" >${map.memberDto.email }</div>
					</form>
            </div>
        </div>
    </div>
    	
</div>


<div id="loading">
	<img id="loading-image" src="/images/Spinner-5.gif" alt="Loading..." />
</div>




<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>

<jsp:include page="../include/side_chat.jsp">
    <jsp:param name="category" value="product3" />
</jsp:include>



</div></div></body></html>