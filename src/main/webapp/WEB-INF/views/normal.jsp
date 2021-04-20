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


<div class="m_bx_wrap">
     
<div class="sub_link_box">
	<div class="sub_link_menu">
		
		<span id="sub_Color_f"><a href="/membership/log_in.asp">로그인</a></span>
		<span id="sub_Color_f" class="sub_under_bar"><a href="/member/join">회원가입</a></span>
		<span id="sub_Color_f"><a href="/membership/find_id.asp">ID/PW찾기</a></span>
		
		<span id="sub_Color_f"><a href="/membership/use_it.asp">이용약관 및 개인정보취급방침</a></span>
		<!--<span id="sub_Color_f" ><a href="/membership/personal.asp">개인정보취급방침</a></span>
		<span id="sub_Color_f" ><a href="/membership/de_email.asp">이메일무단수집거부</a></span>//-->
	</div>
 </div>
<script language="javascript">
$(document).ready(function() {	
	$('#id_button').click(function() {	
		var userid = $('#userid').val();	
		var idPtn = /^[a-zA-Z0-9]{6,15}$/;
		if(idPtn.test(userid) != true){
			alert("아이디를 형식에 맞게 입력해 주세요!");
			return false;
		}
		if (userid == "")
		{
			alert("아이디를 입력하세요");
			$('#userid').focus();
			return false;					
		}		
		if (userid.length < 6 || userid.length > 15)
		{
			alert("아이디는 6자이상 15자이하를 사용할 수 있습니다.");
			$('#userid').val('');
			$('#userid').focus();
			return false;	
		}
		$.ajax({
			type:"post"
			, url:"member_id.asp"
			, data:{userid: userid}				
			, success: function(return_data) {				
				var return_data_arry = return_data.split("㉬");
				var use_yn = return_data_arry[0];				
				var use_ment = return_data_arry[1];
				if (use_yn == "Y")
				{
					alert("["+userid+"] "+use_ment);
					$('#useridClick').val("Y");
					$('#name').focus();
				}
				if (use_yn == "N")
				{
					alert(use_ment);
					$('#useridClick').val("N");
					$('#userid').val("");
					$('#userid').focus();
				}
			}
			, error: function(xhr, status, error)
			  {
				alert(error);				
			  }	
		});			
		return false;
	});

	$('#userid').keyup(function() {
		checkKorean(document.member_box.userid);
	});	

	$('#phone2').keyup(function() {
		var data = $(this).val();		
		if (data)
		{
			if (!validate_num(data))
			{
				alert("숫자만 입력하세요.");
				$(this).val("");
				$(this).focus();
			}
			if(data.length == 4)
			{
				$('#phone3').focus();
			}
		}
	});

	$('#phone3').keyup(function() {
		var data = $(this).val();		
		if (data)
		{
			if (!validate_num(data))
			{
				alert("숫자만 입력하세요.");
				$(this).val("");
				$(this).focus();
			}
			if(data.length == 4)
			{
				$('#phoneAuth').focus();
			}
		}
	});

	$('#phoneAuth').keyup(function() {
		var data = $(this).val();		
		if (data)
		{
			if (!validate_num(data))
			{
				alert("숫자만 입력하세요.");
				$(this).val("");
				$(this).focus();
			}
			if(data.length == 4)
			{
				$('#email1').focus();
			}
		}
	});

	/* $('#phone_auth').click(function() {
		phone1 = $('#phone1').val();
		phone2 = $('#phone2').val();
		phone3 = $('#phone3').val();
		if (!phone1 || !phone2 || !phone3)
		{
			alert("핸드폰번호를 정확히 입력해주세요.");			
			return;
		}else{	
			$.ajax({
				type:"post"
				, url:"phoneAuth.asp"
				, data:{phone1: phone1, phone2: phone2, phone3: phone3}				
				, success: function(return_data) {				
					var return_data_arry = return_data.split("㉬");
					var number_auth = return_data_arry[0];
					var use_yn = return_data_arry[1];
					var use_ment = return_data_arry[2];
					if (use_yn == "Y")
					{
						alert(use_ment);					
						$('#phoneClick').val(number_auth);		
						$('#phoneAuth').focus();
					}
					if (use_yn == "N")
					{
						alert(use_ment);						
					}
				}
				, error: function(xhr, status, error)
				  {
					alert(error);				
				  }	
			});			
			return false
		}
	}); */

	//이메일선택시 도메인부분 수정못하게 설정
	$('#email3').change(function() {
		var data = $(this).val();		
		if (data)
		{
			$('#email2').val(data).attr("readonly",true);
		}else{
			$('#email2').val(data).attr("readonly",false);
		}
	});

	$("#cusEnter").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange:'2017:+5',
		dateFormat: 'yy-mm-dd',
		dayNamesMin: ['<font color=red>일</font>','월','화','수','목','금','<font color=blue>토</font>'],
		weekHeader: 'Wk',
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],			
		showMonthAfterYear: true,		
		minDate:0
	});

	$('#dong_btn').click(function() {
		var data = $(this).attr("data");
		if (data == "0")
		{
			$(".member_step_agree").show();
			$(this).attr("data","1");
		}
		if (data == "1")
		{
			$(".member_step_agree").hide();
			$(this).attr("data","0");
		}
	});

	$('#reset').click(function() {
		document.member_box.reset();
	});

	$('#submit').click(function() {		
		var userid = $('#userid').val();		
		if (!userid || userid.length < 6 || userid.length > 15)
		{
			alert("아이디를 정확히 입력해 주십시오.\n\n아이디는 6~15자까지 허용됩니다. \n\n한글아이디는 사용금지입니다.");
			$('#userid').val('');
			$('#userid').focus();
			return;
		}
		//아이디 중복검사 시작//
		/* var useridClick = $('#useridClick').val();
		if (!useridClick || useridClick == "N")
		{
			alert("아이디 중복검사를 해주세요!");        
			return;
		} */
		//아이디 중복검사 끝//
		var name = $('#name').val();
		if (!name)
		{
			alert("이름을 입력해주세요!");
			$('#name').val('');
			$('#name').focus();
			return;				
		}
		//닉네임 유효성 검사 시작//
		var nickName = $('#nickName').val();
		if (!nickName || nickName.length < 1 || nickName.length > 11 )
		{
			alert("닉네임을 입력해 주세요.\n\n닉네임은 1~10자까지 허용됩니다. \n\n한글,영문으로 설정가능합니다.");
			$('#nickName').val('');
			$('#nickName').focus();
			return;
		} 
		//닉네임 유효성 검사 끝//
		var pwd = $('#pwd').val();
		var pwd1 = $('#pwd1').val();
		if (!pwd || pwd.length < 6 || pwd.length > 12 )
		{
			alert("비밀번호를 정확히 입력해 주십시오\n\n비밀번호는 6~12자까지 허용됩니다. \n\n한글비밀번호는 사용금지입니다.");
			$('#pwd').val('');
			$('#pwd').focus();
			return;
		}    
		if (pwd != pwd1)
		{
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.\n정확히 입력해 주십시요.");
			$('#pwd1').val('');
			$('#pwd1').focus();
			return;
		}	
		
		var phone1 = $('#phone1').val();
		var phone2 = $('#phone2').val();
		var phone3 = $('#phone3').val();		
		if (!phone1 || !phone2 || !phone3)
		{
			alert("휴대폰번호 항목을 모두 입력해주세요!");
			$('#phone2').focus();
			return;					
		}else{
			var mobile = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
			document.getElementById("mobile").value = mobile;
		}
		
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email3 = $('#email3').val();
		if(email1 && email2){
			var email = $("#email1").val()+"@"+$("#email2").val();
			document.getElementById("email").value = email;
			/* alert("결혼예정일 : "+$("#cusEnter").val()); */
		}else if((email1 && !email2) || (!email1 && email2)) {
			alert("이메일 주소를 확인해 주세요!");
			return false;
		}
		
		
		
		/*var phoneClick = $('#phoneClick').val();
		if (!phoneClick)
		{
			alert("휴대폰인증을 하셔야 합니다!");        
			return;
		}
		var phoneAuth = $('#phoneAuth').val();
		if (!phoneAuth)
		{
			alert("휴대폰 인증번호를 입력해 주세요!");
			$('#phoneAuth').focus();
			return;
		}
		if (phoneClick != phoneAuth)
		{
			alert("인증번호가 일치하지 않습니다!\n정확히 입력해 주세요!");
			$('#phoneAuth').focus();
			return;
		} */
		
		
		/* 기업회원 선택시 */
		//기업회원 확인하기
		var chk = false;
		$("input[id=general]:checked").each(function(){
			chk = true;
		});
		if(chk != true){
			
			//업체명
			var com_namePtn = /^[가-힣A-Za-z]{1,20}$/;	
			if (com_namePtn.test($("#com_name").val()) != true) {
				alert("업체명은 한글, 영문만, 최대 20자까지 입력가능합니다.");
				$("#com_name").focus();
				$("#com_name").val("");
				return false;
			}
			
			//대표번호
			var telPtn2 = /^\d{3,4}$/;
			var telPtn3 = /^\d{4}$/;
			if (telPtn2.test($("#com_tel2").val()) != true || telPtn3.test($("#com_tel3").val()) != true) {
				alert("전화번호를 형식에 맞게 입력해주세요!");
				$("#com_tel2").focus();
				$("#com_tel2").val("");
				$("#com_tel3").val("");
				return false;
			}else {
				var com_tel = $("#com_tel1").val()+"-"+$("#com_tel2").val()+"-"+$("#com_tel3").val();
				document.getElementById("com_tel").value = com_tel;
			}
			
		}
		
		
		if ($("input[id='sdong']").is(":checked"))
		{}else {
			alert("개인정보취급방침 동의 하셔야 합니다!")
			$('#sdong').focus();
			return false;
		}		
		//$('#member_box').attr("action","member_access.asp");
 		
		//로그인 확인 클릭		
		$('#member_box').submit();		
	});
});

function checkNumber(val)
{
	if(isNaN(val.value))
	{ 
		alert("숫자만 입력 가능합니다!"); 
		val.focus();
		val.value = "";
	}
}

function checkKorean(val)
{
	for(i=0; i<val.value.length; i++)
	{
		if(((val.value.charCodeAt(i) > 0x3130 && val.value.charCodeAt(i) < 0x318F) || (val.value.charCodeAt(i) >= 0xAC00 && val.value.charCodeAt(i) <= 0xD7A3)))
		{
		    alert("한글아이디는 입력하실 수 없습니다.");
			val.focus(); 
			val.value = "";					
		}				
	}
}

function validate_num(val)
{
	var pattern = new RegExp(/^[0-9]+$/);
	return pattern.test(val);
}


 

 
</script>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">회원가입</span>
        <span class="title_detail">결혼 준비의 새로운 기준 웨딩수다와 함께 하세요!</span>
    </div>
</div>


<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include> 



</div></div></body></html>