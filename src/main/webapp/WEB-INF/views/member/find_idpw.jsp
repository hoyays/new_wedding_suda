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
     
<div class="sub_link_box">
	<div class="sub_link_menu">
		
		<span id="sub_Color_f"><a href="/member/login">로그인</a></span>
		<span id="sub_Color_f"><a href="/member/join">회원가입</a></span>
		<span id="sub_Color_f" class="sub_under_bar"><a href="">ID/PW찾기</a></span>
		
	</div>
 </div>
<script language="javascript">
$(document).ready(function() {		
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
		}
	});

	$('#register').click(function() {
		top.location.href = "/member/join";		
	});
	
	$('#login_link').click(function() {
		top.location.href = "/member/login";		
	});
	
	$('#Send').click(function() {
		var name = $('#name').val();
		var phone1 = $('#phone1').val();
		var phone2 = $('#phone2').val();
		var phone3 = $('#phone3').val();		
		if (!name)
		{
			alert("이름을 입력해 주세요!");
			$('#name').focus();
			return;					
		}
		if (name.length < 2)
		{
			alert("이름은 2글자 이상 입력해 주세요!");
			$('#name').focus();
			return;					
		}
		if (!phone2 || !phone3)
		{
			alert("핸드폰번호를 입력해 주세요!");
			$('#phone2').focus();
			return;					
		}
		if (phone2.length < 3)
		{
			alert("핸드폰번호는 3개 이상 숫자로 입력해 주세요!");
			$('#phone2').focus();
			return;					
		}		
		if (phone3.length != 4)
		{
			alert("핸드폰번호는 4개 숫자를 입력해 주세요!");
			$('#phone3').focus();
			return;					
		}
		
		var mobile=phone1+'-'+phone2+'-'+phone3
		alert(mobile);
			$.ajax({
			type:"post"
			, url:"/member/IdPwCehck"			
			, data:{name: name, mobile: mobile}				
			, success: function(data) {							
				 if(data.result == 'true'){
					alert("등록된 이메일로 발송되었습니다.");
				}else {
					alert("이름 또는 전화번호가 틀립니다.");
				}
			}
			, error: function(xhr, status, error)
			  {
				console.log(xhr, status, error)
				alert("전송실패");				
			  }	
		});			
		return false;
	});
});

function validate_num(val)
{
	var pattern = new RegExp(/^[0-9]+$/);
	return pattern.test(val);
}
</script>
<div id="contain02">
	<div id="contain02_text">
		<span class="title_name">ID/PW 찾기</span>
        <span class="title_detail">결혼 준비의 새로운 기준 베리굿웨딩과 함께 하세요!</span>
    </div>
</div>

<div class="idpw_wrap">
            <form name="frm" id="frm" method="post">    	
                <!--폼박스-->
                <div class="idpw_form_box">
                    <div id="contain03_text">
                        <!--<div id="contain03_text">
                            <span class="title" id="log_in_title">FIND ID / PW</span>
                        </div>//-->
                        <span class="title" id="idpw_title" style="font-size:15px;">이름과 핸드폰 번호 정보가 일치하면 핸드폰으로 아이디/비밀번호를 보내드립니다.</span>
                        <span class="title" id="idpw_title2" style="font-size:15px;">** 회원정보 보호 차원에서 뒤 두자리는 **처리 됩니다.</span>
                    </div>                    
                        <ul id="input_design_idpw_wrap">
                            <li><span class="idpw_textspan" >이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</span>
                                <input type="text" name="name" id="name" class="idpw_input_design" style="padding-left:4px;"></li>     
                            <li><span class="idpw_textspan" style="font-size: 14px;" >핸드폰번호</span>
                            <select name="phone1" id="phone1" class="id_phone" style="font-size:22px;">
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="016">016</option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                              <option value="019">019</option>
                          </select>
                            <span class="idpw_textspan2">-</span>                           
                            <input type="text" name="phone2" id="phone2" class="idpw_input_design2" maxlength="4" style="padding-left:5px;">
                            <span class="idpw_textspan2">-</span>
                            <input type="text" name="phone3" id="phone3" class="idpw_input_design2" maxlength="4" style="padding-left:5px;"></li>
                            <li class="right_btnlogin"><input type="button" id="Send" class="idpw_btn_login" value="확인"></li>
                       </ul>			
                </div>
            </form>
            
            <div id="idpw_btn_box_left">
                <img src="/images/join(1).jpg" alt="로그인">				
            </div>
            <div class="log_in_btn_findbox">
					<ul>
						<form id="log_login_page03" method="post">						
						<li><input class="login_online_find" id="login_link" type="button" alt="로그인" value="로그인"></li>
                        <li><input class="login_online_find" id="register" type="button" alt="회원가입" value="온라인 회원가입"></li>
						</form>
					</ul>
			</div>
            
            <div class="idpw_bottom">
                <span></span>
            </div>
			<div id="messageContent">
			
			</div>
        </div>




<!--푸터 넣을거임  -->

<jsp:include page="../include/footer.jsp">
    <jsp:param name="category" value="product2" />
</jsp:include>



</div></div></body></html>