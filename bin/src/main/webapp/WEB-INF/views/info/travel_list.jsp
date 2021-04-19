<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>웨딩수다</title>
<meta name="description"
	content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">
<meta name="keywords"
	content="베리굿웨딩, 웨딩홀, 스드메, 결혼계산기, 스드메패키지, 스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 셀프웨딩, 하우스웨딩, 서울웨딩홀, 강남구웨딩홀, 송파구웨딩홀, 서초구웨딩홀, 웨딩스튜디오, 웨딩드레스, 예식장, 웨딩박람회, 2018웨딩박람회, 결혼박람회, 서울웨딩페어, 웨딩페어, 2018웨딩박람회일정, 서울웨딩박람회, 서울웨딩페어박람회, 웨딩박람회일정, 결혼박람회일정, 웨딩플래너, 웨딩페어박람회, 2018서울웨딩박람회, 셀프웨딩드레스, 2018결혼박람회, 다이렉트웨딩, 2018웨딩페어, 스드메패키지비용, 서울결혼박람회, 웨딩결혼박람회, 결혼준비, 2018년웨딩박람회, 웨딩드레스대여, 웨딩업체, 결혼준비순서, 웨딩, 혼수박람회, 결혼준비체크리스트, 예물반지, 예물세트, 셀프웨딩, 결혼준비리스트, 결혼식준비, 스드메등급표, 스드메비용, 웨딩드레스샵, 웨딩드레스쇼핑몰, 웨딩컨설팅, 웨딩플레너비용, 혼수가전제품, 가구박람회, 스드메견적표, 스드메박람회, 웨딩패키지, 웨딩플래너추천, 웨딩플레너, 2018년웨딩박람회일정, 웨딩드레스박람회, 서울웨딩박람회, 결혼식박람회, 드메패키지, 서울결혼박람회일정, 결혼일정, 웨딩페어후기, 셀프웨딩박람회, 예물박람회, 예물시계, 웨딩링, 웨딩스드메, 웨딩혼수박람회, 작은결혼식, 2018년결혼박람회, 결혼웨딩박람회, 결혼준비카페, 결혼커플링, 소규모웨딩, 서울웨딩, 셀프웨딩소품, 셀프웨딩촬영, 스드메추천, 신부예물, 알뜰결혼준비, 웨딩다이어리, 웨딩드레스대여가격">
<meta name="naver-site-verification"
	content="5d3ca3c5d4a61a4fcdde9c26a84db72bd3a56255">
<meta property="og:type" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,신혼여행,예물">
<meta property="og:title"
	content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,웨딩박람회,신혼여행,예물">
<meta property="og:site_name"
	content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">
<meta property="og:description"
	content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">
<meta property="og:image"
	content="http://verygoodwedding.co.kr/images/main_logo.png">
<meta property="og:url" content="http://verygoodwedding.co.kr">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,신혼여행,예물">
<meta name="twitter:site" content="베리굿웨딩-웨딩홀,스드메,결혼준비,셀프웨딩,신혼여행,예물">
<meta name="twitter:image"
	content="http://verygoodwedding.co.kr/images/main_logo.png">
<meta name="twitter:description"
	content="웨딩홀, 스드메, 스드메패키지,스드메견적표, 허니문, 웨딩박람회, 혼수, 예물, 결혼준비, 웨딩스튜디오, 웨딩드레스, 예식장 정보 제공">

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
	
	<!-- 삭제버튼 클릭시 -->
<script type="text/javascript">


	function deleteCheck(infoId) {
		if (confirm("삭제하시겠습니까?") == true) {
			location.href = "./travel_delete?infoId="+infoId;
		} else {
			return false;
		}
	}
</script>



<script language="javascript">
	$(document).ready(
			function() {
				$('span[id=up_menu]').mouseover(
						function() {
							$("div[id=all_menu_layer").hide();
							$('span[id=all_menu]').attr("data", "0");
							$("div[class=m_allmenu]").css("background-color",
									"#ffffff");

							var menu_num = $(this).attr("data");

							$('span[name=up_menu_]').removeClass('M_ttl_menu');
							$(this).addClass('M_ttl_menu');

							$("div[class=main_submenu_wrap").slideDown(400);
							$("div[name=main_submenu_part]").hide();
							$("div[class=main_submenu_part" + menu_num + "]")
									.show();
						});

				$('div[class=main_topbx_01]').mouseout(
						function() {
							$('span[id=all_menu]').attr("data", "0");
							$("div[class=m_allmenu]").css("background-color",
									"#ffffff");
							$('div[class=main_submenu_wrap]').hide();
							$('span[name=up_menu_]').removeClass('M_ttl_menu');
						});

				$('div[class=main_submenu_wrap]').mouseover(
						function() {
							$('span[id=all_menu]').attr("data", "0");
							$("div[class=m_allmenu]").css("background-color",
									"#ffffff");
							$(this).show();
							$(this).mouseout(
									function() {
										$(this).hide();
										$('span[name=up_menu_]').removeClass(
												'M_ttl_menu');
									});
						});

				$('a[id=lay_sub_css]').mouseover(function() {
					$('.lay_sub_css_').css("color", "");
					$(this).css("color", "#ff6036");
					$('a[id=lay_sub_css]').mouseout(function() {
						$('.lay_sub_css_').css("color", "");
					});
				});

				$('span[id=all_menu]').click(
						function() {
							var all_data = $(this).attr("data");
							$('div[class=main_submenu_wrap]').hide();
							$('span[name=up_menu_]').removeClass('M_ttl_menu');

							if (all_data == "0") {
								$("div[class=m_allmenu]").css(
										"background-color", "#e8ecf3");
								$("div[id=all_menu_layer").slideDown(400);
								$(this).attr("data", "1");
							}
							if (all_data == "1") {
								$("div[id=all_menu_layer").slideUp(200);
								$(this).attr("data", "0");
								$("div[class=m_allmenu]").css(
										"background-color", "#ffffff");
							}
						});

				$('img[id=all_menu_close]').click(
						function() {
							$("div[id=all_menu_layer").slideUp(200);
							$('span[id=all_menu]').attr("data", "0");
							$("div[class=m_allmenu]").css("background-color",
									"#ffffff");
						});

				$('#favorite').on(
						'click',
						function(e) {
							var bookmarkURL = window.location.href;
							var bookmarkTitle = document.title;
							var triggerDefault = false;

							if (window.sidebar && window.sidebar.addPanel) {
								// Firefox version < 23
								window.sidebar.addPanel(bookmarkTitle,
										bookmarkURL, '');
							} else if ((window.sidebar && (navigator.userAgent
									.toLowerCase().indexOf('firefox') > -1))
									|| (window.opera && window.print)) {
								// Firefox version >= 23 and Opera Hotlist
								var $this = $(this);
								$this.attr('href', bookmarkURL);
								$this.attr('title', bookmarkTitle);
								$this.attr('rel', 'sidebar');
								$this.off(e);
								triggerDefault = true;
							} else if (window.external
									&& ('AddFavorite' in window.external)) {
								// IE Favorite
								window.external.AddFavorite(bookmarkURL,
										bookmarkTitle);
							} else {
								// WebKit - Safari/Chrome
								alert((navigator.userAgent.toLowerCase()
										.indexOf('mac') != -1 ? 'Cmd' : 'Ctrl')
										+ '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
							}

							return triggerDefault;
						});

				$(window).scroll(function() {
					if ($(window).scrollTop() > "166") {
						$(".main_topbx_03").hide();
						$(".main_submenu_wrap").css("top", "109px");
					} else {
						$(".main_topbx_03").show();
						$(".main_submenu_wrap").css("top", "166px");
					}
				});
			});

	function login() {
		var href;

		try {
			href = "/membership/log_in.asp?url=" + escape(top.location.href);
		} catch (e) {
			href = "/membership/log_in.asp?url="
					+ escape("http://verygoodwedding.co.kr/");
		}
		;
		top.location.replace(href)
	}

	function logout() {
		var href;

		try {
			href = "/membership/logout.asp?url=" + escape(top.location.href);
		} catch (e) {
			href = "/membership/logout.asp?url="
					+ escape("http://verygoodwedding.co.kr/");
		}
		;
		top.location.replace(href)
	}
</script>
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
					<span id="sub_Color_f"><a href="./studio_list">스튜디오</a></span> <span
						id="sub_Color_f"><a href="/info/dress_list">드레스</a></span> <span
						id="sub_Color_f"><a href="/info/hairMakeUp_list">헤어메이크업</a></span>
					<span id="sub_Color_f" class="sub_under_bar"><a
						href="/info/travel_list">신혼여행</a></span>
				</div>
			</div>

			<div id="contain02">
				<div id="contain02_text">
					<span class="title_name">신혼여행</span> <span class="title_detail">결혼
						준비의 새로운 기준 베리굿웨딩과 함께 하세요!</span>
				</div>
			</div>
			<script type="text/javascript">
				
			</script>
			<div class="honsu_wrap">


				<!-- 반복 시작 -->
				<c:forEach var="traDto" items="${map.list }">
				
				<div class="honsu_bx">
					<div class="honsu_left_bx">
						<div class="honsu_bigpic" id="honsu_bigpic_1000"
							style="position: relative; height: 499px;">
							<span id="big_view_1000"><img src="/upload/${traDto.c_image }"
								onload="javascript:resize(this)" border="0" width="850"
								height="499"></span>
						<%-- 	<div style="position: absolute; top: 0px;">
								<img src="../images/popup/popup_link_1.png" id="video_btn" data="1000"
									data2="<iframe width='640' height='360' src='https://www.youtube.com/embed/_bbyy_0sFJE'frameborder='0' allowfullscreen></iframe>
"
									style="cursor: pointer;">
							</div> --%>
						</div>
					</div>
					<div class="honsu_right_bx">
						<div class="honsu_Rtop">
							<span class="h_logo" style="padding-left: 27px;"><img
								src="/upload/${traDto.c_logo }" alt="${traDto.com_name }로고"></span>
						</div>
						<div class="honsu_mtop">
							<span class="h_tx" style="font-size: 21px; color: #067484;">${traDto.com_name }</span>
							<span class="h_link">
								<table width="120" border="0" cellpadding="0" cellspacing="0" align="center">
									<tbody>
										<tr>
											<c:choose>
												<c:when test="${session_userid eq traDto.userid || session_userid eq 'admin'}">
													<span class="after_return_txt_edit"><a href="./travel_modifyView?infoId=${traDto.infoId }&page=${map.page }&search=${map.search}" id="edit_btn" style="cursor:pointer;" data="18896" data2="pageNo=1&amp;search=&amp;keyword=" data3="pageNo=1&amp;search=&amp;keyword=" data4="${map.queDto.bname }">수정</a></span>
													<span class="after_return_txt_del"><a id="del_btn" style="cursor:pointer;" data="18896" data2="pageNo=1&amp;search=&amp;keyword=" data3="pageNo=1&amp;search=&amp;keyword=" data4="${map.queDto.bname }" onclick="deleteCheck('${traDto.infoId}')">삭제</a></span>
												</c:when>
												<c:otherwise>									
													<td align="center"
														style="width: 120px; height: 34px; cursor: pointer; border: 1px solid #d9d8d8; line-height: 34px; font-size: 17px; background-color: #fe4253; color: #ffffff; text-align: center;"
														gubun="혼수상담" title="${traDto.com_name }" category="혼수상담" qidx="1000"
														id="btn_layer_consult" onclick="location.href='./question_list'">문의하기</td>
												</c:otherwise>
											</c:choose>
										</tr>
									</tbody>
								</table>
							</span>
						</div>
						
						<div class="h_con_bx">
							<div class="h_detailtx"
								style="height: 130px; overflow: auto; SCROLLBAR-DARKSHADOW-COLOR: #ffffff; scrollbar-BaseC-olor: #7391A2; SCROLLBAR-FACE-COLOR: #ffffff; SCROLLBAR-SHADOW-COLOR: #cbcbcb; SCROLLBAR-ARROW-COLOR: #cbcbcb;">
								<p style="font-size: 13px;">${traDto.content }</p>
							</div>
							<div style="height: 10px;"></div>
							<p class="h_event_title">가격대·혜택</p>
							<div class="h_eventtx"
								style="height: 75px; overflow: auto; SCROLLBAR-DARKSHADOW-COLOR: #ffffff; scrollbar-BaseC-olor: #7391A2; SCROLLBAR-FACE-COLOR: #ffffff; SCROLLBAR-SHADOW-COLOR: #cbcbcb; SCROLLBAR-ARROW-COLOR: #cbcbcb; border: 1px solid #579aa4;">

								<p style="font-size: 13px;">${traDto.c_price }</p>
							</div>
			<%-- <!-- //info -->
			<span class="btn_input" style="position: absolute; right: 60px; bottom: 320px;"> 
				<c:choose>
					<c:when test="${session_userid == map.traDto.userid }">
						<a href="travel_modifyView?infoId=${traDto.infoId }">
							<span class="btn_input"><input type="button" class="online_lg_color" id="regist_btn" value="수정하기" style="cursor: pointer; font-family: NanumBarunGothic;"></span></a>
						<span class="btn_input"><input type="button" class="online_lg_color" id="regist_btn" value="삭제하기" style="cursor: pointer; font-family: NanumBarunGothic;" onclick="deleteCheck()"></span>
					</c:when>
				<c:otherwise>
				</c:otherwise>
			    </c:choose>
			</span> --%>
							<div style="height: 10px;"></div>
						</div>
						
						
					</div>
				</div>

				</c:forEach>
				<!-- 반복 끝 -->

			</div>
			
		</div>
	</div>


	<div id="board_link_wrap">
		<div id="board_write">
			<c:choose>
				<c:when test="${session_businessTy eq 'company' || session_userid eq 'admin'}">
			    	<a href="travel_writeView"><input class="board_write_btn" type="button" value="상품등록" id="regist_btn" style="cursor:pointer;font-family: NanumBarunGothic;font-size:15px; bottom: 20px;" ></a>
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
	
	<!-- </div>
	</div>  -->
</body>
</html>