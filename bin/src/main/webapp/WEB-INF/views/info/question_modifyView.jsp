<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("br","<br>"); %>
<% pageContext.setAttribute("cn","\n"); %>


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
<script type="text/javascript" src="/js/jquery-ui.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
  #stu01{float:left; width:300px; }

</style>


<c:choose>
	<c:when test="${session_flag == null || session_flag eq 'fail'}">
		<script type="text/javascript">
			alert('로그인 후 이용 가능합니다.');
			location.href="../member/login";
		</script>
	</c:when>
</c:choose>



<!-- 글쓰기 저장 ajax -->
<script type="text/javascript">





	function InfowriteCheck() {
		
		var form = $('#online_write_box')[0];
		// FormData 객체 생성
		var formData = new FormData(form);  //대신 밑에 formData에 넣어줌
	
		if($('#bcategory').val()=="") {
			alert('문의하실 분야를 선택해주세요.(웨딩홀/허니문)');
			$("#bcategory").focus();
			return false;
		}
		if($('#btitle').val()=="") {
			alert('제목을 입력해주세요.');
			$("#btitle").focus();
			return false;
		}
		
	
		if($('#bcontent').val()=="") {
			alert('문의 내용을 작성해주세요.');
			$("#bcontent").focus();
			return false;
		}
		
		/* var str = $('#bcontent').val();
	      str = str.replace(/(?:\r\n|\r|\n)/g, '<br>');
	      $('#bcontent').val(str); */
		
	      document.online_write_box.submit();
	      
	}
	    
	
</script>


<!-- 글쓰기 저장 ajax 끝 -->



<!--접속유입통계-->	

<!--접속유입통계-->
<script language="javascript">
$(document).ready(function() {
	$('span[id=up_menu]').mouseover(function() { 		
		$("div[id=all_menu_layer").hide();
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
		
		var menu_num = $(this).attr("data");		
		
		$('span[name=up_menu_]').removeClass('M_ttl_menu');
		$(this).addClass('M_ttl_menu');		
		
		$("div[class=main_submenu_wrap").slideDown(400);
		$("div[name=main_submenu_part]").hide();
		$("div[class=main_submenu_part"+menu_num+"]").show();
	});

	$('div[class=main_topbx_01]').mouseout(function() {
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
		$('div[class=main_submenu_wrap]').hide();		
		$('span[name=up_menu_]').removeClass('M_ttl_menu');
	});
	
	$('div[class=main_submenu_wrap]').mouseover(function() {
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
		$(this).show();
		$(this).mouseout(function() {
			$(this).hide();		
			$('span[name=up_menu_]').removeClass('M_ttl_menu');
		});
	});

	$('a[id=lay_sub_css]').mouseover(function() {
		$('.lay_sub_css_').css("color","");
		$(this).css("color","#ff6036");
		$('a[id=lay_sub_css]').mouseout(function() {
			$('.lay_sub_css_').css("color","");		
		});
	});

	$('span[id=all_menu]').click(function() {
		var all_data = $(this).attr("data");
		$('div[class=main_submenu_wrap]').hide();		
		$('span[name=up_menu_]').removeClass('M_ttl_menu');
		
		if (all_data == "0")
		{
			$("div[class=m_allmenu]").css("background-color","#e8ecf3");
			$("div[id=all_menu_layer").slideDown(400);
			$(this).attr("data","1");			
		}
		if (all_data == "1")
		{			
			$("div[id=all_menu_layer").slideUp(200);
			$(this).attr("data","0");
			$("div[class=m_allmenu]").css("background-color","#ffffff");
		}	
	});

	$('img[id=all_menu_close]').click(function() {		
		$("div[id=all_menu_layer").slideUp(200);
		$('span[id=all_menu]').attr("data","0");
		$("div[class=m_allmenu]").css("background-color","#ffffff");
	});

	$('#favorite').on('click', function(e) {
        var bookmarkURL = window.location.href;
        var bookmarkTitle = document.title;
        var triggerDefault = false;

        if (window.sidebar && window.sidebar.addPanel) {
            // Firefox version < 23
            window.sidebar.addPanel(bookmarkTitle, bookmarkURL, '');
        } else if ((window.sidebar && (navigator.userAgent.toLowerCase().indexOf('firefox') > -1)) || (window.opera && window.print)) {
            // Firefox version >= 23 and Opera Hotlist
            var $this = $(this);
            $this.attr('href', bookmarkURL);
            $this.attr('title', bookmarkTitle);
            $this.attr('rel', 'sidebar');
            $this.off(e);
            triggerDefault = true;
        } else if (window.external && ('AddFavorite' in window.external)) {
            // IE Favorite
            window.external.AddFavorite(bookmarkURL, bookmarkTitle);
        } else {
            // WebKit - Safari/Chrome
            alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
        }

        return triggerDefault;
    });
	
	$(window).scroll(function(){		
		if ($(window).scrollTop() > "166")
		{ 
			$(".main_topbx_03").hide();
			$(".main_submenu_wrap").css("top","109px");
		}else {
			$(".main_topbx_03").show();
			$(".main_submenu_wrap").css("top","166px");
		}				
	});
});

function login()
{
	var href;
	
	try {
		href = "/membership/log_in.asp?url=" + escape(top.location.href);
	}catch(e){
		href = "/membership/log_in.asp?url=" + escape("http://verygoodwedding.co.kr/");
	};
	top.location.replace(href)
}

function logout()
{
	var href;
	
	try {
		href = "/membership/logout.asp?url=" + escape(top.location.href);
	}catch(e){
		href = "/membership/logout.asp?url=" + escape("http://verygoodwedding.co.kr/");
	};
	top.location.replace(href)		
}


var formArray = {};  //파일을 담을 객체 key, value 형태로 파일을 담든다.
var fileList = new Object();

$('#file').change(function(evt) {
    fileList = $(this)[0].files;  //파일 대상이 리스트 형태로 넘어온다.
    for(var i=0;i < fileList.length;i++){
        var file = fileList[i];
        const formData = new FormData();
        formData.append('유니크한아이디', file);  //파일을 더해준다.
        //만약 여기서 유니크한이이디를 사용하여 테그(노드)를 만든다면
        //각각 파일에 대해 프로그래싱이 가능하다.
        $('프로그래스 상태를 나타낼 테그').append('유니크한 아이디를 가진 객체');
    }
});




</script>
  
</head>
<body>
<div class="wrap">
	<!--top 상단 해더 시작-->
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
	<div id="jssor_1" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 1280px; height: 218.88px; overflow: hidden; visibility: visible;" jssor-slider="true">			
		
				
		
		
	<div style="position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; transform-origin: 0px 0px; transform: scale(0.64);"><div class="" style="position: relative; margin: 0px auto; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: visible; visibility: visible; display: block;"><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="position: absolute; z-index: 0; pointer-events: none;"></div></div><div class="imgs" data-u="slides" style="cursor: default; position: absolute; top: 0px; left: 0px; width: 2000px; height: 342px; overflow: hidden; z-index: 0;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; background-color: rgb(0, 0, 0); opacity: 0; display: none;"></div>
		<div class="sub_link_menu_wrap" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute; overflow: hidden;"><img class="bg_img" data-u="image" src="http://vgood.co.kr/admin/contentsImg/homepage/201803/story.jpg" border="0" style="top: 0px; left: 0px; width: 2000px; height: 342px; position: absolute;"><div style="top: 0px; left: 0px; width: 2000px; height: 342px; z-index: 1000; display: none;"></div></div>			
		</div><div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 6px; width: 16px; height: 16px; left: 992px;" data-autocenter="1">			
			
		<div data-u="prototype" style="width: 16px; height: 16px; position: absolute; left: 0px; top: 0px;" class="av"></div></div><span data-u="arrowleft" class="jssora22l" style="top: 142px; left: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span><span data-u="arrowright" class="jssora22r" style="top: 142px; right: 12px; width: 40px; height: 58px; display: none;" data-autocenter="2"></span></div></div></div>
	<script>
		jssor_1_slider_init();
	</script>

<div class="sub_link_box">
	<div class="sub_link_menu">
		<span id="sub_Color_f"><a href="/community/notice_list.asp">공지사항</a></span>
        <span id="sub_Color_f" class="sub_under_bar"><a href="/community/board_list.asp">문의게시판</a></span>
		<span id="sub_Color_f"><a href="/community/after_list.asp">웨딩후기</a></span>
    </div>
</div>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">문의게시판</span>
        <span class="title_detail">웨딩홀/허니문 문의게시판입니다.</span>
    </div>
</div>

<script language="javascript">
$(document).ready(function() {	

		document.online_write_box.submit();		
	});

	$('#link_btn').click(function() {
		data = $(this).attr("data");
		top.location.href="after_list.asp?"+data;
	});
});
</script>
<div id="online_write_wrap">    
   <form name="online_write_box" id="online_write_box" method="post" action="./question_modify" enctype="multipart/form-data">
   <input type="hidden" name="userid" id="userid" value="${userMap.memberDto.userid }">
   <input type="hidden" name="bid" id="bid" value="${map.queDto.bid}">
   <input type="hidden" name="bname" id="bname" value="${map.queDto.bname }">
   <input type="hidden" name="com_tel" id="com_tel" value="${userMap.memberDto.com_tel }">
   
   <div class="online_Awrite_form">
      <ul>
            <li class="box_li">
            <span class="online_write_title"><img src="../images/member_icon.png">&nbsp;&nbsp;&nbsp;작성자</span>
                <div class="value">
                <input type="input" name="bname" id="bname" class="online_write_input02" value="${map.queDto.bname }" readonly style="padding-left:5px;color:#000000;">
                </div>
            </li>
            <li class="box_li" >
            <span class="online_write_title"><img src="../images/member_icon.png">&nbsp;&nbsp;&nbsp;제목</span>
                <div class="value">
                	<input type="text" name="btitle" id="btitle" class="online_write_input02" value="${map.queDto.btitle }" style="padding-left:5px;color:#000000;">
                </div>
            </li>
            <li class="box_li" >
            <span class="online_write_title" style="font-size:14px;"><img src="../images/member_icon.png">&nbsp;&nbsp;&nbsp;파일(필요시)</span>
                <div class="value"> 
                <input type="file" name="file" id="file" style="margin-left: 10px; margin-top: 12px" >
               </div>
            </li>
             <li class="box_li" >
            <span class="online_write_title02" style="font-size:14px;"><img src="../images/member_icon.png">&nbsp;&nbsp;&nbsp;내용</span>
                <div class="value">
                <div><textarea name="bcontent" id="bcontent">${map.queDto.bcontent }</textarea></div></div>
            </li>
            
        </ul>
    </div>
    <div class="online_write_button">
      <span class="online_center">
         <span class="button_pack">
                <span class="btn_input"><button type="button" class="online_lg_color" id="regist_btn" style="cursor:pointer;font-family: NanumBarunGothic;" onclick="InfowriteCheck()">저장하기</button></span>
                <a href="/info/question_list?page=${map.page }"><span class="btn_input"><button type="button" class="online_lg_color02" id="link_btn" data="pageNo=&amp;search=&amp;keyword=" style="cursor:pointer;font-family: NanumBarunGothic;">목록으로</button></span></a>
            </span>
        </span>
     </div>
</form>
</div>
          
    

<!--푸터 넣을거임  -->
<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>

           
    </div></body></html>