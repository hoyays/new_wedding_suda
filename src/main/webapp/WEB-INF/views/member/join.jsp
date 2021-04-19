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
	<c:when test="${session_flag eq 'fail' || session_flag eq null}">
	
	
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
		/* $.ajax({
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
		}); */ 			
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

	/* $("#cusEnter").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange:'2017:+5',
		dateFormat: 'yy-mm-dd',
		dayNamesMin: ['<font color=red>일</font>','월','화','수','목','금','<font color=blue>토</font>'],
		weekHeader: 'Wk',
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],			
		showMonthAfterYear: true,		
		minDate:0
	}); */

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
		var useridClick = $('#useridClick').val();
		if (!useridClick || useridClick == "N")
		{
			alert("아이디 중복검사를 해주세요!");        
			return;
		}
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

//아이디 중복확인  
// 아이디 중복(input hidden) ==>id,  useridClick
//중복확인 버튼 id,  join_id_btn
$(function(){

	$("#join_id_btn").click(function(){
		
		$.ajax({
			url:"/member/useridDoubleCheck",
			type:"post",
			data:{	"userid": $("#userid").val() },
			success:function(data){   
				if(parseInt(data) == 1){
					alert("이미 사용중인 아이디입니다.");
				}else {
					alert("사용가능한 아이디입니다.");
					$('#useridClick').val("Y");
				}
				
			},
			error:function(){
				alert("에러");
			} 
			
			
		});//ajax
		
	});//jQuery - 아이디 중복버튼 클릭시
		
	
	
});//jQuery




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

function noRefresh()
{
	/* CTRL + N키 막음. */
    if ((event.keyCode == 78) && (event.ctrlKey == true))
    {
		event.keyCode = 0;
        return false;
    }
    /* F5 번키 막음. */
    if(event.keyCode == 116)
    {
		event.keyCode = 0;
        return false;
    }
 }
 document.onkeydown = noRefresh ;
 
 var randomNumber =0;
 $(function(){
      $("#emailck").click(function(){
         var emailAdr = $('#email1').val()+'@'+$('#email2').val();
         $.ajax({
            url:"/member/EmailCheck",
            type:"post",
            data:{   'emailAdr': emailAdr },
            success:function(data){   
               if(data.result == 'true'){
                  alert('메일을 전송하였습니다. 인증번호를 입력해주십시오.');
                  randomNumber = data.randomNum;
                  alert(randomNumber);
                  return randomNumber;
               }else {
                  alert('메일 전송에 실패하였습니다.');
               }
               
            },
            error:function(){
               alert("에러");
            } 
            
            
         });//ajax
         
      });//jQuery - 아이디 중복버튼 클릭시
      
      $('#emailokay').click(function() {   
         var emailreturn = $('#emailreturn').val();   
            if(emailreturn != randomNumber){
               return false;
            }else{
               alert('정상적으로 인증이 완료 되었습니다.')
            }
       });
      
   });
 

 
</script>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">회원가입</span>
        <span class="title_detail">결혼 준비의 새로운 기준 웨딩수다와 함께 하세요!</span>
    </div>
</div>
<div id="member_wrap">
	<form name="member_box" id="member_box" method="post" action="/member/joinCheck">
	<input type="hidden" name="useridClick" id="useridClick">  <!-- 아이디 중복검사 클릭 시 Y 저장됨 -->
	<input type="hidden" name="phoneClick" id="phoneClick">   
	<div class="member_form">
		<ul>
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;아이디</span>
				<div class="value_m">
					<input type="text" name="userid" id="userid" class="member_input02_mini" style="width:120px;padding-left:5px;font-size:15px;line-height:25px;color:#000000;" maxlength="15">
					<a id="id_button" style="cursor:pointer;"><input type="button" id="join_id_btn" value="아이디 중복" style="background-color:#252524;"></a> &nbsp;(영문+숫자로 6~15자 이내)
				</div>
			</li>	
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;이름</span>
				<div class="value_m">
					<input type="text" name="name" id="name" class="member_input01" style="ime-mode:active;width:120px;padding-left:5px;font-size:15px;line-height:25px;color:#000000;"> 
					<select name="sex" id="sex" style="font-size:15px;width:60px;height:30px;">						
						<option value="W"> 신부</option>
						<option value="M">신랑</option>						
					</select>
				</div>
			</li>
			
			
			
			
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;닉네임</span>
				<div class="value_m">
					<input type="text" name="nickName" id="nickName" class="member_input01" style="ime-mode:active;width:120px;padding-left:5px;font-size:15px;line-height:25px;color:#000000;">  &nbsp;(한글+영문으로 1~10자 이내)
				</div>
			</li>
			
			
			
			
			
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;비밀번호</span>
				<div class="value_m">
					<input type="password" name="pwd" id="pwd" class="member_input01" style="width:180px;padding-left:5px;font-size:15px;color:#000000;" maxlength="12"> &nbsp;(영문+숫자로 6~12자 이내)
				</div>
			</li>                	
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;비밀번호 확인</span>
				<div class="value_m">
					<input type="password" name="pwd1" id="pwd1" class="member_input01" style="width:180px;padding-left:5px;font-size:15px;color:#000000;" maxlength="12">
				</div>                
			</li>
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;휴대폰 번호</span>
				<div class="value_selet02">
					<select name="phone1" id="phone1" class="phone_select" style="width:90px;font-size:23px;float:left;margin-right:3px;">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<span class="idpw_textspan2">-</span><input name="phone2" type="text" class="member_input_tel" id="phone2" maxlength="4" style="padding-left:5px;font-size:15px;color:#000000;"><span class="idpw_textspan2">-</span><input name="phone3" type="text" class="member_input_tel" id="phone3" maxlength="4" style="padding-left:5px;font-size:15px;color:#000000;"> <a id="phone_auth" style="cursor:pointer;"></a>
					<input type="hidden" name="mobile" id="mobile" value="">      
				</div>			
			</li>
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon03.png">&nbsp;&nbsp;이메일</span>
				            <div class="value_m">
               <input type="text" name="email1" id="email1" class="member_input_email" style="width:120px;padding-left:5px;font-size:15px;color:#000000;">@ 
               <input type="text" name="email2" id="email2" class="member_input_email" style="width:120px;padding-left:5px;font-size:15px;color:#000000;">
               <select name="email3" id="email3" style="font-size:16px; height:30px;">
                  <option value="">직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="daum.net">daum.net</option>
                  <option value="paran.com">paran.com</option>
                  <option value="empal.com">empal.com</option>
                  <option value="nate.com">nate.com</option>
                  <option value="yahoo.co.kr">yahoo.co.kr</option>
                  <option value="chol.com">chol.com</option>
                  <option value="dreamwiz.com">dreamwiz.com</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="korea.com">korea.com</option>
                  <option value="lycos.co.kr">lycos.co.kr</option>
                  <option value="netian.com">netian.com</option>
               </select>
               
               <input type="hidden" name="email" id="email" value="">
               <div id="modalES">
               <input type="text" id="emailreturn" name="emailreturn" style="font-size:16px; width:100px; height:30px;">
               <button type="button" id="emailck" name="emailck" >인증번호 전송</button>
               <input type="hidden" name="emailnum" id="emailnum" value="">
               <button type="button" id="emailokay" name="emailokay" >인증번호 확인</button>
               </div>  
            </div>
			</li>	
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon03.png" align="absmiddle">&nbsp;&nbsp;결혼예정일</span>
				<div class="value_m">
					<input type="date" name="cusEnter" id="cusEnter" class="member_input_email hasDatepicker" style="width:150px;cursor:pointer;padding-left:5px;font-size:15px;color:#000000;">
				</div>
			</li>
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon03.png">&nbsp;&nbsp;추천인</span>
				<div class="value_m">
					<input type="text" name="chuchon" id="chuchon" class="member_input_email" style="width:120px;padding-left:5px;font-size:15px;color:#000000;"> 
				</div>			
			</li>
			
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:16px;"><img src="../images/member_icon03.png">&nbsp;&nbsp;&nbsp;가입유형</span>
				<div class="value_radio" style="line-height:35px;">
					<label id="radio_text" style="font-size:15px;"><input type="radio" name="businessTy" id="general" class="raido_click" value="general" onchange="setDisplay()" checked>일반회원</label>
					<label id="radio_text" style="font-size:15px;">
					<input type="radio" name="businessTy" id="company" class="raido_click" value="company" onchange="setDisplay()" style="font-size:15px;line-height:25px;color:#000000;">기업회원&nbsp;(※업체명, 대표번호 입력필수)</label>	
				</div>
			</li>
			
			
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon03.png">&nbsp;&nbsp;업체명</span>
				<div class="value_m">
					<input type="text" name="com_name" id="com_name" class="member_input_email" style="width:180px;padding-left:5px;font-size:15px;color:#000000;">  &nbsp;(한글+영문 최대20자)
				</div>			
			</li>
			
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon03.png">&nbsp;&nbsp;업체 대표번호</span>
				<div class="value_selet02">
					<select name="com_tel1" id="com_tel1" class="phone_select" style="width:90px;font-size:23px;float:left;margin-right:3px;">
						<option value="02" selected="selected">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
						<option value="070">070</option>
					</select>
					<span class="idpw_textspan2">-</span><input name="com_tel2" type="text" class="member_input_tel" id="com_tel2" maxlength="4" style="padding-left:5px;font-size:15px;color:#000000;"><span class="idpw_textspan2">-</span><input name="com_tel3" type="text" class="member_input_tel" id="com_tel3" maxlength="4" style="padding-left:5px;font-size:15px;color:#000000;"> <a id="phone_auth" style="cursor:pointer;"></a>
					<input type="hidden" name="com_tel" id="com_tel" value="">       
				</div>			
			</li>
			
			
			
			
			
			<li class="member_box_li_selet">
				<span class="member_title_m" style="font-size:17px;"><img src="../images/member_icon.png">&nbsp;&nbsp;개인정보동의</span>
				<div class="value_m">
					<input type="checkbox" class="join_privacy_btn" name="sdong" id="sdong" value="Y" checked="" style="font-family:nanum barun gothic"> <u id="dong_btn" style="cursor:pointer;" data="0">개인정보취급방침</u>을 &nbsp;확인&nbsp; 동의합니다.
				</div>	
			</li>
		</ul>
	</div>
	</form>
	<div class="mem_Lpic_wrap"><p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/login.jpg" alt="로그인"></p></div>	
</div>
<div id="member_join_wrap">
	<!-- 개인정보 방침 시작 //-->
	<div class="member_step_agree" style="display:none;">
		<span class="arrow"><img src="../images/reserve_ic_arrow.png" alt="동의화살표"></span>
<textarea cols="157px" rows="5px" readonly="" class="textarea" style="padding-left:10px;padding-top:10px;padding-bottom:10px;">
</textarea>
</div>
<!-- 개인정보 방침 시작 //-->
    <div class="member_button_area">
		<span class="lineup">
			<span class="button_pack">
				<span class="btn_input"><button type="button" id="submit" class="btn_lg_color" onclick="joinCheck()" style="cursor:pointer;font-size:18px;font-weight:bold;">확인</button></span>
				<span class="btn_input"><button type="reset" id="reset" class="btn_lg_color02" style="cursor:pointer;font-size:18px;">취소</button></span>
			</span>
        </span>
    </div>
</div>

<style>
	#popup2 {border:solid 5px #444;text-align:left;background:#fff;}
	#popup2 h1 {background:#444;padding:8px 18px 12px;border-bottom:solid 3px #dbdbdb;}
	#popup2 h1 img {display:block;}
	#popup2 h1 .close {position:absolute;right:10px;top:8px;cursor:pointer;}
	#popup2 .popup_conts {padding:15px 20px 20px;}
	table.form {width:100%;table-layout:fixed;border-collapse:collapse;border-spacing:0;padding:0;}
	table.form tbody th {vertical-align:middle; border-bottom:solid 1px #d6d6d6;border-right:solid 1px #d6d6d6;text-align:left;padding:0 16px;background:#e8e7e7; font-size:15px; font-family: 'nanum barun gothic';}
	table.form tbody td {border-bottom:solid 1px #d6d6d6;padding:6px 10px;text-align:left;font-size:13px;}
	table.form tbody td input[type=text] {width:100px; border:solid 1px #cacaca;font-size:15px;color:#000;padding:2px;height:20px;line-height:14px;}
	table.form tbody td input[type=password] {width:80px; border:solid 1px #cacaca;font-size:13px;color:#000;padding:2px;height:18px;line-height:14px;}
	table.form tbody td input, table.form tbody td select, table.form tbody td label, table.form tbody td img {vertical-align:middle;}
	table.form tbody td .blank {padding-left:5px;letter-spacing:-0.1em;}
	table.form tbody td select {border:solid 1px #ccc;border-bottom:solid 1px #dedede;border-right:solid 1px #dedede;color:#555;}
	table.form tbody td.td12 {font-size:12px;color:#444}
	table.form tbody td img {vertical-align:middle;}
	table.topLine_brown {width:100%;border-top:solid 1px #dedede;}
</style>
<script type="text/javascript">

$(document).ready
(
	function()
	{
		$('img[id=top_go]').click(function() {
			$('html, body').stop().animate({
				scrollTop : 0
			},1500, 'easeOutBack');
		});

		//다이어리 신청 레이어 시작
		$('img[id=diary_btn]').click(function() {			
			$("#consult_write_layer").remove();
					
			var gubun_ = "다이어리 신청";
			var title_ = "다이어리 신청";
			var category_ = "다이어리 신청";				

			var layer_consult_write = "<div id='consult_write_layer' style='width:800px;position:absolute;background-color:#fff;z-index:1000;'>"
				+"<div id='popup2'>"
					+"<form name='conFrm' id='conFrm' method='post'>"
					+"<input type='hidden' id='test' style='width:100%;'/>"
					+"<h1>"
						+"<span style='color:#FFFFFF;font-size:20px;'>"+category_+"</span>"
						+"<a class='close'><img src='/images/btn_pop_close.png' id='btn_layer_close_' alt='닫기' style='cursor:pointer;' /></a>"
					+"</h1>"
					+"<div class='popup_conts'>"
						+"<table class='form topLine_brown mgt10'>"				
							+"<colgroup>"
								+"<col width='115' />"
								+"<col width='*' />"
							+"</colgroup>"
							+"<tbody>"
								+"<tr>"
									+"<th>성명</th>"
									+"<td style='font-size:13px;'>"												
										+"<input type='text' name='lay_name_' id='lay_name_' style='width:100px;' value='' /> "
										+"<select name='lay_sex_' id='lay_sex_' style='width:80px;font-size:19px;color:#000;'>"
											+"<option value='W' >신부</option>"
											+"<option value='M' >신랑</option>"						
										+"</select>"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<th>연락처</th>"
									+"<td>"
										+"<select name='lay_phone1_' id='lay_phone1_' style='font-size:19px;width:70px;color:#000;'>"
											+"<option value='010'>010</option>"
											+"<option value='011'>011</option>"
											+"<option value='016'>016</option>"
											+"<option value='017'>017</option>"
											+"<option value='018'>018</option>"
											+"<option value='019'>019</option>"
										+"</select> - <input type='text' name='lay_phone2_' id='lay_phone2_' style='width:70px;' maxlength='4' value='' /> - <input type='text' name='lay_phone3_' id='lay_phone3_' style='width:70px;' maxlength='4' value='' />"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<th>이메일</th>"
									+"<td>"
										+"<input type='text' name='lay_email1_' id='lay_email1_' style='width:135px;' value='' /> @ <input type='text' name='lay_email2_' id='lay_email2_' style='width:110px;' value='' /> "
										+"<select name='lay_email3_' id='lay_email3_' style='width:150px;font-size:19px;color:#000;'>"
											+"<option value=''>직접입력</option>"
											+"<option value='naver.com'>naver.com</option>"
											+"<option value='hanmail.net'>hanmail.net</option>"
											+"<option value='gmail.com'>gmail.com</option>"
											+"<option value='daum.net'>daum.net</option>"
											+"<option value='paran.com'>paran.com</option>"
											+"<option value='empal.com'>empal.com</option>"
											+"<option value='nate.com'>nate.com</option>"
											+"<option value='yahoo.co.kr'>yahoo.co.kr</option>"
											+"<option value='chol.com'>chol.com</option>"
											+"<option value='dreamwiz.com'>dreamwiz.com</option>"
											+"<option value='hotmail.com'>hotmail.com</option>"
											+"<option value='korea.com'>korea.com</option>"
											+"<option value='lycos.co.kr'>lycos.co.kr</option>"
											+"<option value='netian.com'>netian.com</option>"
										+"</select>"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<th>결혼예정일</th>"
									+"<td style='font-size:13px;'>"
										+"<input type='text' id='lay_cusEnter_' name='lay_cusEnter_' readonly style='width:100px;cursor:pointer;' value='' />"
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<th>예정지역</th>"
									+"<td style='font-size:13px;'>"
										+"<select id='sido_' name='sido_' style='font-size:19px;width:90px;'>"
											+"<option value=''>시도</option>"											
											+"<option value='서울'>서울</option>"
											+"<option value='인천'>인천</option>"
											+"<option value='경기'>경기</option>"
											+"<option value='충남'>충남</option>"
											+"<option value='충북'>충북</option>"
											+"<option value='세종'>세종</option>"
											+"<option value='대전'>대전</option>"
											+"<option value='부산'>부산</option>"
											+"<option value='대구'>대구</option>"
											+"<option value='광주'>광주</option>"
											+"<option value='울산'>울산</option>"
											+"<option value='경남'>경남</option>"
											+"<option value='경북'>경북</option>"
											+"<option value='전남'>전남</option>"
											+"<option value='전북'>전북</option>"
											+"<option value='강원'>강원</option>"
											+"<option value='제주'>제주</option>"													
										+"</select> "
										+"<select id='s_gugun' name='s_gugun' style='font-size:19px;width:150px;'>"
											+"<option value=''>세부지역선택</option>"							
										+"</select> <input type='text' id='lay_cusPlace_' name='lay_cusPlace_' style='width:180px;' />"						
									+"</td>"
								+"</tr>"
								+"<tr>"
									+"<th>문의 내용</th>"
									+"<td>"
										+"<textarea id='lay_content_' name='lay_content_' rows='5' cols='74' style='border:1px solid #cacaca;overflow:auto;padding:4px;SCROLLBAR-FACE-COLOR: #ffffff;SCROLLBAR-HIGHLIGHT-COLOR: #cbcbcb;SCROLLBAR-SHADOW-COLOR: #cbcbcb;SCROLLBAR-3DLIGHT-COLOR:#ffffff;SCROLLBAR-ARROW-COLOR: #cbcbcb;SCROLLBAR-TRACK-COLOR: #f5f5f5;SCROLLBAR-DARKSHADOW-COLOR: #ffffff;	scrollbar-BaseC-olor: #7391A2;LINE-HEIGHT: 16px;'></textarea>"
									+"</td>"
								+"</tr>"
							+"</tbody>"
						+"</table>"
						+"<br>"
						+"<div align='center'>"
							+"<img src='/images/btn_pop_consult.png' id='btn_layer_ok_' style='cursor:pointer;' />"
							+"<img src='/images/btn_pop_cancel.png' id='btn_layer_close_' style='cursor:pointer;' />"
						+"</div>"
					+"</div>"
					+"</form>"
				+"</div>"
			+"</div>";
								
			$("body").append(layer_consult_write);
						
			var consult_left = ($(window).scrollLeft() + ($(window).width() -  $("#consult_write_layer").width()) / 2);
			var consult_top = ($(window).scrollTop() + ($(window).height() -  $("#consult_write_layer").height()) / 2);	

			$("#consult_write_layer").css("top",consult_top).css("left",consult_left).show();
			
			$('#consult_write_layer').css("cursor","move").draggable();

			$("input[id=lay_cusEnter_]").datepicker({
				changeMonth: true,
				changeYear: true,
				yearRange:'2016:+3',
				dateFormat: 'yy-mm-dd',
				dayNamesMin: ['<font color=red>일</font>','월','화','수','목','금','<font color=blue>토</font>'],
				weekHeader: 'Wk',
				monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],		
				showMonthAfterYear: true,
				minDate:0
			});

			$('input[id=lay_phone2_]').keyup(function() {
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
						$('input[id=lay_phone3_]').focus();
					}
				}							
			});
			$('input[id=lay_phone3_]').keyup(function() {
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
						$('input[id=lay_email1_]').focus();
					}
				}							
			});

			function validate_num(val)
			{
				var pattern = new RegExp(/^[0-9]+$/);
				return pattern.test(val);
			}

			$("select[id=lay_email3_]").change
			(
				function()
				{
					var email2_str = $(this).val();								
					
					$("input[id='lay_email2_']").val(email2_str);
				}
			);

			$("select[id=sido_]").change
			(
				function()
				{
					gu_chage();
				}
			);

			function gu_chage()
			{
				var sido_str = $("select[id=sido_] option:selected").val();
				var para_str = "sido="+escape(sido_str);				
				
				$.ajax
				(
					{
						type : "post",
						dataType : "xml",
						url : "/hall/get_ajax_addr_gugun.asp",
						data : para_str,
						success:function(data)
						{							
							$("option", "select[id=s_gugun]").remove();
							
							$("<option></option>")
							.text("세부지역선택")
							.attr("value","")
							.appendTo("select[id=s_gugun]");							
							
							var row = $(data).find("root").find("data");
							var size = row.length;
							
							for(var i=0;i<size;i++)
							{
								var cell = row.eq(i);
								var gugun = cell.find("s_gugun").text();
								
								var tmp_option = $("<option></option>").attr("value",gugun).text(gugun);

								if(gugun=="")
								{
									$(tmp_option).attr("selected","selected");
								}

								$(tmp_option).appendTo("select[id=s_gugun]");	
							}
						}
						,
						error:function()
						{
							alert("데이타 가져오는데 실패하였습니다.");
						}
					}
				);
			}

			$("img[id=btn_layer_ok_]").click
			(
				function()
				{						
					var sex_ = $("select[id='lay_sex_']").val();
					var name_ = $("input[id='lay_name_']").val(); 
					if(!name_)
					{
						alert("성명을 입력하여 주십시오!");
						$("*[id='lay_name_']").focus();
						return;
					}
					var phone1_ = $("select[id='lay_phone1_']").val();
					var phone2_ = $("input[id='lay_phone2_']").val();
					var phone3_ = $("input[id='lay_phone3_']").val();											
					if(!phone2_)
					{
						alert("두번째 연락처를 입력하여 주십시오!");
						$("input[id='lay_phone2_']").focus();
						return;
					}
					else
					{
						if(phone2_.toString().length < 3)
						{
							alert("두번째 연락처를 정확하게 입력하여 주십시오!");
							$("input[id='lay_phone2_']").focus();
							return;
						}
					} 
					if(!phone3_)
					{
						alert("세번째 연락처를 입력하여 주십시오!");
						$("input[id='lay_phone3_']").focus();
						return;
					}
					else
					{
						if(phone3_.toString().length != 4)
						{
							alert("세번째 연락처를 정확히 입력하여 주십시오!");
							$("input[id='lay_phone3_']").focus();
							return;
						}
					}
					var email1_ = $("input[id='lay_email1_']").val();
					var email2_ = $("input[id='lay_email2_']").val();						
					var cusEnter_ = $("input[id='lay_cusEnter_']").val();								
					var sido_ = $("select[id='sido_']").val();
					var gugun_ = $("select[id='s_gugun']").val();
					var cusPlace_ = $("input[id='lay_cusPlace_']").val();
					var content_ = $("*[id='lay_content_']").val();

					gubun_ = escape(gubun_);						
					category_ = escape(category_);								
					title_ = escape(title_);
					sex_ = escape(sex_);
					name_ = escape(name_);
					phone1_ = escape(phone1_);
					phone2_ = escape(phone2_);
					phone3_ = escape(phone3_);
					email1_ = escape(email1_);
					email2_ = escape(email2_);						
					cusEnter_ = escape(cusEnter_);
					cusPlace_ = escape(cusPlace_);
					sido_ = escape(sido_);
					gugun_ = escape(gugun_);						
					content_ = escape(content_);

					var send_data = "gubun="+gubun_						
					+"&category="+category_								
					+"&title="+title_
					+"&sex="+sex_
					+"&name="+name_
					+"&phone1="+phone1_
					+"&phone2="+phone2_
					+"&phone3="+phone3_
					+"&email1="+email1_
					+"&email2="+email2_						
					+"&cusEnter="+cusEnter_
					+"&cusPlace="+cusPlace_
					+"&sido="+sido_
					+"&gugun="+gugun_						
					+"&content="+content_;

					var send_url="/progress/board_consult_ok.asp";					

					$.ajax
					(
						{
							type : "post",
							dataType : "html",
							url : send_url,
							data : send_data,
							success:function(data)
							{	
								alert("성공적으로 접수되었습니다.");											
								$("#consult_write_layer").remove();													
							}
							,
							error:function()
							{
								alert("신청시 데이터 처리중 문제가 발생하였습니다.\n다시 시도하여 주십시오!");
							}
						}
					);
				}
			);
			
			$('img[id=btn_layer_close_]').click(function() {								
				$("#consult_write_layer").remove();							
			});
		});
		//다이어리 신청 레이어 끝
		
		$('#ask_phone').keyup(function() {
			var data = $(this).val();		
			if (data)
			{
				if (!validateNum(data))
				{
					alert("숫자만 입력하세요.");
					$(this).val("");
					$(this).focus();
				}			
			}							
		});

		function validateNum(val)
		{
			var pattern = new RegExp(/^[0-9]+$/);
			return pattern.test(val);
		}
		
		$("img[id=ask_btn]").click
		(
			function()
			{						
				var ask_sex = '';
				var ask_name = $("*[id='ask_name']").val(); 
				if(!ask_name)
				{
					alert("신청자명을 입력하여 주십시요!");
					$("*[id='ask_name']").focus();
					return;
				}
				var ask_phone = $("input[id='ask_phone']").val();														
				if(!ask_phone)
				{
					alert("연락처를 입력하여 주십시요!");
					$("input[id='ask_phone']").focus();
					return;
				}				
				var ask_memo = $("*[id='ask_memo']").val();				

				ask_gubun = escape("빠른상담");						
				ask_category = escape("빠른상담");								
				ask_title = escape("빠른상담(홈페이지)");
				ask_sex = escape(ask_sex);
				ask_name = escape(ask_name);
				ask_phone = escape(ask_phone);												
				ask_memo = escape(ask_memo);				

				var send_data = "gubun="+ask_gubun						
				+"&category="+ask_category								
				+"&title="+ask_title
				+"&sex="+ask_sex
				+"&name="+ask_name
				+"&phone="+ask_phone									
				+"&content="+ask_memo;				

				var send_url="/progress/board_consult_ok.asp?flag=1";		

				$.ajax
				(
					{
						type : "post",
						dataType : "html",
						url : send_url,
						data : send_data,
						success:function(data)
						{	
							alert("성공적으로 접수되었습니다.");
							$("*[id='ask_memo']").val('');
						}
						,
						error:function()
						{
							alert("신청시 데이터 처리중 문제가 발생하였습니다.\n다시 시도하여 주십시오!");
						}
					}
				);
			}
		);		
	}
);
</script>


<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	var userAgent = navigator.userAgent.toLowerCase();
	var machine = "";
	var agent = "";
	
	if(userAgent.match('iphone')) 
	{
		 machine = "아이폰";
		 agent = "1"
	} 
	else if(userAgent.match('ipad')) 
	{
	   machine = "아이패드";
	   agent = "1"
	} 
	else if(userAgent.match('ipod')) 
	{
		machine = "아이팟";
		agent = "1"
	} 
	else if(userAgent.match('android')) 
	{
		machine = "안드로이드";
		agent = "1"
	}
	else if(userAgent.match('blackberry')) 
	{
		machine = "블랙베리";
		agent = "1"
	}
	else if(userAgent.match('LG')) 
	{
		machine = "LG";
		agent = "1"
	}
	else if(userAgent.match('MOT')) 
	{
		machine = "모토로라";
		agent = "1"
	}
	else if(userAgent.match('SAMSUNG')) 
	{
		machine = "SAMSUNG";
		agent = "1"
	}
	else if(userAgent.match('SonyEricsson')) 
	{
		machine = "소니에릭손";
		agent = "1"
	}
	if (agent == "1")
	{
		$("#mobile_view").show();
	}
	
	$("#mobile_view").click(function() {
		top.location.href="/mobile";
	});
});
</script>
<div id="mobile_view" style="font-size:4em;font-weight:bold;text-align:center;height:110px;line-height:110px;display:none;">모바일로 보기</div></div>


<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>



</div></div>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('이미 가입한 회원입니다.');
			location.href='../main/main';
		</script>
	</c:otherwise>
</c:choose>


</body></html>