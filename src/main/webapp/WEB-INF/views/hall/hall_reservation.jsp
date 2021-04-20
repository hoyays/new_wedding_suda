<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<head>
	<title>Wedding Suda</title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="/css/reset.css" type="text/css">
		<link rel="stylesheet" href="/css/main.css?ver=1" type="text/css">
		<link rel="stylesheet" href="/css/sub.css?ver=1" type="text/css">
		<link rel="stylesheet" href="/css/sub_detail.css?ver=1" type="text/css">
		<!--<link rel="stylesheet" href="../fonts/spoqahansansregular.css?ver=1" type="text/css">-->
		<link rel="stylesheet" href="../fonts/NanumBarunGothic.css?ver=1"
			type="text/css">
		<link rel="stylesheet" type="text/css"
			href="/css/jquery-ui-1.10.4.custom.css">
		
		<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="/js/document.on.js"></script>
		<script type="text/javascript" src="/js/prog.js"></script>
		<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
		<script type="text/javascript"
			src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<script type="text/javascript">
function counselingCheck() {

	if($("#phone2").val()==""){
		alert("전화번호를 꼭 적으셔야 합니다.");
		$("#phone2").focus();
		return false;
	}
	if($("#phone3").val()==""){
		alert("전화번호를 꼭 적으셔야 합니다.");
		$("#phone3").focus();
		return false;
	}
	alert('신청되었습니다. 곧 연락드리겠습니다.');
	document.counsel_box.submit();
}


</script>
			
			
	</head>
	<body>
	
		<!-- header -->
		<jsp:include page="../include/header.jsp">
    		<jsp:param name="category" value="product1" />
		</jsp:include>	
	
		<div id="contain02_text">
			<span class="title_name">웨딩수다를 선택한 이유!</span>
			<span class="title_detail">투명한 결혼 정보, 웨딩수다에서 찾을 수 있습니다!</span>
		</div>
	
		<div id="counsel_wrap">
			<form action="./counseling_reservation" name="counsel_box" id="counsel_box" method="post" >
				<div class="counsel_form">
					<ul>
	
						<li class="counsel_box_li_selet">
						<span class="counsel_title"	style="font-size: 15px;">
						<img src="../images/member_icon02.png">&nbsp;&nbsp;&nbsp;원하시는 지역</span>
							<div class="value_selet" style="line-height: 35px;">
								<input type="checkbox" class="selet_text" name="sido" id="sido"	value="서울강남구"> 
								<span class="selet_text" style="font-size: 15px;">서울 강남</span>&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="checkbox" class="selet_text" name="sido" id="sido"	value="서울서초구"> 
								<span class="selet_text" style="font-size: 15px;">서울 서초</span>&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="checkbox" class="selet_text" name="sido" id="sido"	value="서울송파구"> 
								<span class="selet_text" style="font-size: 15px;">서울 송파</span>&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="checkbox" class="selet_text" name="sido" id="sido"
									value="서울강동구"> <span class="selet_text"
									style="font-size: 15px;">서울 강동</span>&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="checkbox" class="selet_text" name="sido" id="sido"
									value="서울강서지역"> <span class="selet_text"
									style="font-size: 15px;">서울 강서지역</span>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="sido" id="sido"
									value="서울강북권"> <span class="selet_text"
									style="font-size: 15px;">서울 강북권</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="sido" id="sido"
									value="경기북부"> <span class="selet_text"
									style="font-size: 15px;">경기 북부</span>&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="checkbox" class="selet_text" name="sido" id="sido"
									value="경기남부"> <span class="selet_text"
									style="font-size: 15px;">경기 남부</span>&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="checkbox" class="selet_text" name="sido" id="sido"
									value="인천"> <span class="selet_text"
									style="font-size: 15px;">인천</span>&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="checkbox" class="selet_text" name="sido" id="sido"
									value="기타지역"> <span class="selet_text"
									style="font-size: 15px;">기타</span>
							</div></li>
						<li class="counsel_box_li_selet"><span class="counsel_title"
							style="font-size: 15px;"><img
								src="../images/member_icon02.png">&nbsp;&nbsp;&nbsp;예상하시는
								하객인원수</span>
							<div class="value_selet" style="line-height: 35px;">
								<input type="checkbox" class="selet_text" name="cusHuman"
									id="cusHuman" value="100명이하"> <span class="selet_text"
									style="font-size: 15px;">100명이하</span>&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="checkbox" class="selet_text" name="cusHuman" id="cusHuman"
									value="100~200명"> <span class="selet_text"
									style="font-size: 15px;">100~200명</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="cusHuman"
									id="cusHuman" value="200~300명"> <span class="selet_text"
									style="font-size: 15px;">200~300명</span>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="cusHuman"
									id="cusHuman" value="400~500명"> <span class="selet_text"
									style="font-size: 15px;">400~500명</span>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="cusHuman"
									id="cusHuman" value="500명이상"> <span class="selet_text"
									style="font-size: 15px;">500명이상</span>
							</div></li>
						<li class="counsel_box_li_selet"><span class="counsel_title"
							style="font-size: 15px;"><img
								src="../images/member_icon02.png">&nbsp;&nbsp;&nbsp;예상하시는
								1인 식대가격</span>
							<div class="value_selet" style="line-height: 35px;">
								<input type="checkbox" class="selet_text" name="cusPrice"
									id="cusPrice" value="28,000~30,000원"> <span
									class="selet_text" style="font-size: 15px;">28,000~30,000원</span>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="cusPrice"
									id="cusPrice" value="31,000~33,000원"> <span
									class="selet_text" style="font-size: 15px;">31,000~33,000원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="cusPrice"
									id="cusPrice" value="34,000~36,000원"> <span
									class="selet_text" style="font-size: 15px;">34,000~36,000원</span>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" class="selet_text" name="cusPrice"
									id="cusPrice" value="37,000원이상"> <span
									class="selet_text" style="font-size: 15px;">37,000원이상</span>
							</div></li>
	
						<li class="ess double"><span class="counsel_title"
							style="font-size: 15px;"><img
								src="../images/member_icon.png">&nbsp;&nbsp;&nbsp;성명</span>
							<div class="value02">&nbsp;&nbsp;
								<input type="text" name="name" id="name"
									class="counseling_name" value="${session_name }" >&nbsp;&nbsp;&nbsp;<select name="sex"
									id="sex" class="phone_coun_selects" style="font-size: 23px;">
									<option value="W">신부</option>
									<option value="M">신랑</option>
								</select>
							</div></li>
						<li class="ess double"><span class="counsel_title"
							style="font-size: 15px;"><img
								src="../images/member_icon.png">&nbsp;&nbsp;&nbsp;핸드폰번호</span>
							<div class="value02">
								<select name="phone1" id="phone1" class="phone_coun_select"
									style="font-size: 23px; float: left; margin-right: 3px;">
									<option value="010">010</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> <span class="idpw_coun_textspan2">-</span><input name="phone2"
									type="text" class="coun_input_tel" id="phone2" maxlength="4"
									value=""><span class="idpw_coun_textspan2">-</span><input
									name="phone3" type="text" class="coun_input_tel" id="phone3"
									maxlength="4" value="">
							</div></li>
						<li class="ess double"><span class="counsel_title"
							style="font-size: 15px;"><img
								src="../images/member_icon03.png">&nbsp;&nbsp;&nbsp;결혼예정일</span>
							<div class="value02">&nbsp;
								<input type="date" name="cusEnter" id="cusEnter" class="member_input_email hasDatepicker" style="width:150px;cursor:pointer;padding-left:5px;font-size:15px;color:#000000;">
							</div></li>
						<li class="ess double"><span class="counsel_title"
							style="font-size: 15px;"><img
								src="../images/member_icon03.png">&nbsp;&nbsp;&nbsp;상담방법</span>
							<div class="value_radio" style="line-height: 35px;">
								<label id="radio_text" style="font-size: 15px;"><input
									type="radio" name="contact_point" id="contact_point"
									class="raido_click" value="전화상담">전화상담</label> <label
									id="radio_text" style="font-size: 15px;"><input
									type="radio" name="contact_point" id="contact_point"
									class="raido_click" checked="" value="방문상담">방문상담</label>
							</div></li>
						<li class="counsel_editor"><span class="counsel_title02"
							style="font-size: 15px;"><img
								src="../images/member_icon03.png">&nbsp;&nbsp;&nbsp;문의내용</span>
							<div class="value">
								<div>
									<textarea id="content" name="content"></textarea>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="counsel_button">
					<span class="counsel_center"> <span class="button_pack">
							<span class="btn_input"><button type="button"
									id="regist_btn"	style="cursor: pointer; font-family: NanumBarunGothic;"
									class="counsel_color" onclick="counselingCheck()">신청버튼</button></span>
							<span class="btn_input"><button type="reset" id="reset" class="btn_lg_color02" style="cursor:pointer;font-size:18px;">취소</button></span> 
					</span>
					</span>
				</div>
			</form>
		</div>
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
    		<jsp:param name="category" value="product2" />
		</jsp:include>
		
	</body>
</html>