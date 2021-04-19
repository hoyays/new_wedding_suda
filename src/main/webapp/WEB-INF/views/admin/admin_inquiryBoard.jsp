<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko"><head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="author" content="(주)에스아이알소프트">
<meta name="keywords" content="영카트5,그누보드5,GPL,무료쇼핑몰솔루션">
<meta name="description" content="영카트5는 자유롭게 사용할수 있는 GPL 라이센스 독립형 무료 쇼핑몰 솔루션 입니다.">

<title>관리자메인 | 웨딩수다</title>
<link rel="stylesheet" href="https://demo.sir.kr/gnuboard5/adm/css/admin.css?ver=191202">
<link rel="stylesheet" href="https://demo.sir.kr/gnuboard5/js/font-awesome/css/font-awesome.min.css?ver=191202">
<!--[if lte IE 8]>
<script src="https://demo.sir.kr/gnuboard5/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://demo.sir.kr/gnuboard5";
var g5_bbs_url   = "https://demo.sir.kr/gnuboard5/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_shop_url = "https://demo.sir.kr/gnuboard5/shop";
var g5_admin_url = "https://demo.sir.kr/gnuboard5/adm";
</script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery-1.12.4.min.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery-migrate-1.4.1.min.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery.menu.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/common.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/wrest.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/placeholders.min.js?ver=191202"></script>
</head>
<body cz-shortcut-listen="true">
<div id="hd_login_msg">영카트5님 로그인 중 <a href="https://demo.sir.kr/gnuboard5/bbs/logout.php">로그아웃</a></div>
<script>
var tempX = 0;
var tempY = 0;

function imageview(id, w, h)
{

    menu(id);

    var el_id = document.getElementById(id);

    //submenu = eval(name+".style");
    submenu = el_id.style;
    submenu.left = tempX - ( w + 11 );
    submenu.top  = tempY - ( h / 2 );

    selectBoxVisible();

    if (el_id.style.display != 'none')
        selectBoxHidden(id);
}
</script>

<div id="to_content"><a href="#container">본문 바로가기</a></div>

<header id="hd">
    <h1>영카트5</h1>
    <div id="hd_top">
        <button type="button" id="btn_gnb" class="btn_gnb_close ">메뉴</button>
       <div id="logo"><img src="https://demo.sir.kr/gnuboard5/adm/img/logo.png" alt="영카트5 관리자"></div>

        <div id="tnb">
            <ul>
                <!-- <li class="tnb_li"><a href="https://demo.sir.kr/gnuboard5/shop/" class="tnb_shop" target="_blank" title="쇼핑몰 바로가기">쇼핑몰 바로가기</a></li> -->
                <li class="tnb_li"><a href="../main/main" class="tnb_community" target="_blank" title="커뮤니티 바로가기">웨딩수다 바로가기</a></li>
                <!-- <li class="tnb_li"><a href="https://demo.sir.kr/gnuboard5/adm/service.php" class="tnb_service">부가서비스</a></li> -->
                <li class="tnb_li"><button type="button" class="tnb_mb_btn">${session_admin_name}<span class="./img/btn_gnb.png">메뉴열기</span></button>
                    <ul class="tnb_mb_area">
                        <!-- <li><a href="https://demo.sir.kr/gnuboard5/adm/member_form.php?w=u&amp;mb_id=youngcart5">관리자정보</a></li> -->
                        <li id="tnb_logout"><a href="/admin/admin_logout">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <nav id="gnb" class="gnb_large ">
        <h2>관리자 주메뉴</h2>
        <ul class="gnb_ul">
                        <li class="gnb_li">
                <button type="button" class="btn_op menu-100 menu-order-1" title="환경설정">환경설정</button>
                <div class="gnb_oparea_wr">
                    <div class="gnb_oparea">
                        <h3>환경설정</h3>
                        <ul><li data-menu="100100"><a href="https://demo.sir.kr/gnuboard5/adm/config_form.php" class="gnb_2da  ">기본환경설정</a></li><li data-menu="100280"><a href="https://demo.sir.kr/gnuboard5/adm/theme.php" class="gnb_2da gnb_grp_style gnb_grp_div">테마설정</a></li><li data-menu="100290"><a href="https://demo.sir.kr/gnuboard5/adm/menu_list.php" class="gnb_2da gnb_grp_style gnb_grp_div">메뉴설정</a></li><li data-menu="100300"><a href="https://demo.sir.kr/gnuboard5/adm/sendmail_test.php" class="gnb_2da  ">메일 테스트</a></li><li data-menu="100510"><a href="https://demo.sir.kr/gnuboard5/adm/browscap.php" class="gnb_2da  ">Browscap 업데이트</a></li><li data-menu="100520"><a href="https://demo.sir.kr/gnuboard5/adm/browscap_convert.php" class="gnb_2da  ">접속로그 변환</a></li><li data-menu="100400"><a href="https://demo.sir.kr/gnuboard5/adm/service.php" class="gnb_2da  ">부가서비스</a></li></ul>                    </div>
                </div>
            </li>
                        <li class="gnb_li on">
                <button type="button" class="btn_op menu-200 menu-order-2" title="회원관리">회원관리</button>
                <div class="gnb_oparea_wr">
						<div class="gnb_oparea">
							<h3>회원관리</h3>
							<ul>
								<li data-menu="200100"><a href="./admin_memberStatus"
									class="gnb_2da  ">회원관리</a></li>
								<!-- <li data-menu="200300"><a
									href="https://demo.sir.kr/gnuboard5/adm/mail_list.php"
									class="gnb_2da  ">회원메일발송</a></li>
								<li data-menu="200800"><a
									href="https://demo.sir.kr/gnuboard5/adm/visit_list.php"
									class="gnb_2da gnb_grp_style gnb_grp_div">접속자집계</a></li>
								<li data-menu="200810"><a
									href="https://demo.sir.kr/gnuboard5/adm/visit_search.php"
									class="gnb_2da gnb_grp_style gnb_grp_div">접속자검색</a></li>
								<li data-menu="200200"><a
									href="https://demo.sir.kr/gnuboard5/adm/point_list.php"
									class="gnb_2da  ">포인트관리</a></li>
								<li data-menu="200900"><a
									href="https://demo.sir.kr/gnuboard5/adm/poll_list.php"
									class="gnb_2da  ">투표관리</a></li> -->
							</ul>
						</div>
					</div>
            </li>
                        <li class="gnb_li">
                <button type="button" class="btn_op menu-300 menu-order-3" title="게시판관리">게시판관리</button>
                <div class="gnb_oparea_wr">
						<div class="gnb_oparea">
							<h3>게시판관리</h3>
							<ul>
								<li data-menu="300100"><a
									href="./admin_inquiryBoard"
									class="gnb_2da  ">지식인 게시판</a></li>
								<!-- <li data-menu="300200"><a
									href="https://demo.sir.kr/gnuboard5/adm/boardgroup_list.php"
									class="gnb_2da  ">게시판그룹관리</a></li>
								<li data-menu="300300"><a
									href="https://demo.sir.kr/gnuboard5/adm/popular_list.php"
									class="gnb_2da gnb_grp_style gnb_grp_div">인기검색어관리</a></li>
								<li data-menu="300400"><a
									href="https://demo.sir.kr/gnuboard5/adm/popular_rank.php"
									class="gnb_2da gnb_grp_style gnb_grp_div">인기검색어순위</a></li>
								<li data-menu="300500"><a
									href="https://demo.sir.kr/gnuboard5/adm/qa_config.php"
									class="gnb_2da  ">1:1문의설정</a></li>
								<li data-menu="300600"><a
									href="https://demo.sir.kr/gnuboard5/adm/contentlist.php"
									class="gnb_2da gnb_grp_style gnb_grp_div">내용관리</a></li> -->
							</ul>
						</div>
					</div>
            </li>
                        <li class="gnb_li">
                <button type="button" class="btn_op menu-400 menu-order-4" title="쇼핑몰관리">쇼핑몰관리</button>
                <div class="gnb_oparea_wr">
                    <div class="gnb_oparea">
                        <h3>쇼핑몰관리</h3>
                        <ul><li data-menu="400100"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/configform.php" class="gnb_2da  ">쇼핑몰설정</a></li><li data-menu="400400"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/orderlist.php" class="gnb_2da gnb_grp_style gnb_grp_div">주문내역</a></li><li data-menu="400440"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/personalpaylist.php" class="gnb_2da gnb_grp_style gnb_grp_div">개인결제관리</a></li><li data-menu="400200"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/categorylist.php" class="gnb_2da  ">분류관리</a></li><li data-menu="400300"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemlist.php" class="gnb_2da  ">상품관리</a></li><li data-menu="400660"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemqalist.php" class="gnb_2da  ">상품문의</a></li><li data-menu="400650"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemuselist.php" class="gnb_2da  ">사용후기</a></li><li data-menu="400620"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemstocklist.php" class="gnb_2da  ">상품재고관리</a></li><li data-menu="400610"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemtypelist.php" class="gnb_2da  ">상품유형관리</a></li><li data-menu="400500"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/optionstocklist.php" class="gnb_2da  ">상품옵션재고관리</a></li><li data-menu="400800"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/couponlist.php" class="gnb_2da  ">쿠폰관리</a></li><li data-menu="400810"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/couponzonelist.php" class="gnb_2da  ">쿠폰존관리</a></li><li data-menu="400750"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/sendcostlist.php" class="gnb_2da gnb_grp_style gnb_grp_div">추가배송비관리</a></li><li data-menu="400410"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/inorderlist.php" class="gnb_2da gnb_grp_style gnb_grp_div">미완료주문</a></li></ul>                    </div>
                </div>
            </li>
                        <li class="gnb_li">
                <button type="button" class="btn_op menu-500 menu-order-5" title="쇼핑몰현황/기타">쇼핑몰현황/기타</button>
                <div class="gnb_oparea_wr">
                    <div class="gnb_oparea">
                        <h3>쇼핑몰현황/기타</h3>
                        <ul><li data-menu="500110"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/sale1.php" class="gnb_2da  ">매출현황</a></li><li data-menu="500100"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemsellrank.php" class="gnb_2da  ">상품판매순위</a></li><li data-menu="500120"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/orderprint.php" class="gnb_2da gnb_grp_style gnb_grp_div">주문내역출력</a></li><li data-menu="500400"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemstocksms.php" class="gnb_2da gnb_grp_style gnb_grp_div">재입고SMS알림</a></li><li data-menu="500300"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemevent.php" class="gnb_2da  ">이벤트관리</a></li><li data-menu="500310"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/itemeventlist.php" class="gnb_2da  ">이벤트일괄처리</a></li><li data-menu="500500"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/bannerlist.php" class="gnb_2da gnb_grp_style gnb_grp_div">배너관리</a></li><li data-menu="500140"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/wishlist.php" class="gnb_2da  ">보관함현황</a></li><li data-menu="500210"><a href="https://demo.sir.kr/gnuboard5/adm/shop_admin/price.php" class="gnb_2da gnb_grp_style gnb_grp_div">가격비교사이트</a></li></ul>                    </div>
                </div>
            </li>
                        <li class="gnb_li">
                <button type="button" class="btn_op menu-900 menu-order-6" title="SMS 관리">SMS 관리</button>
                <div class="gnb_oparea_wr">
                    <div class="gnb_oparea">
                        <h3>SMS 관리</h3>
                        <ul><li data-menu="900100"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/config.php" class="gnb_2da  ">SMS 기본설정</a></li><li data-menu="900300"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/sms_write.php" class="gnb_2da  ">문자 보내기</a></li><li data-menu="900400"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/history_list.php" class="gnb_2da gnb_grp_style gnb_grp_div">전송내역-건별</a></li><li data-menu="900410"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/history_num.php" class="gnb_2da gnb_grp_style gnb_grp_div">전송내역-번호별</a></li><li data-menu="900500"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/form_group.php" class="gnb_2da  ">이모티콘 그룹</a></li><li data-menu="900600"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/form_list.php" class="gnb_2da  ">이모티콘 관리</a></li><li data-menu="900700"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/num_group.php" class="gnb_2da gnb_grp_style gnb_grp_div">휴대폰번호 그룹</a></li><li data-menu="900800"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/num_book.php" class="gnb_2da gnb_grp_style gnb_grp_div">휴대폰번호 관리</a></li><li data-menu="900900"><a href="https://demo.sir.kr/gnuboard5/adm/sms_admin/num_book_file.php" class="gnb_2da gnb_grp_style gnb_grp_div">휴대폰번호 파일</a></li></ul>                    </div>
                </div>
            </li>
                    </ul>
    </nav>

</header>

<script>
jQuery(function($){

    var menu_cookie_key = 'g5_admin_btn_gnb';

    $(".tnb_mb_btn").click(function(){
        $(".tnb_mb_area").toggle();
    });

    $("#btn_gnb").click(function(){
        
        var $this = $(this);

        try {
            if( ! $this.hasClass("btn_gnb_open") ){
                set_cookie(menu_cookie_key, 1, 60*60*24*365);
            } else {
                delete_cookie(menu_cookie_key);
            }
        }
        catch(err) {
        }

        $("#container").toggleClass("container-small");
        $("#gnb").toggleClass("gnb_small");
        $this.toggleClass("btn_gnb_open");

    });

    $(".gnb_ul li .btn_op" ).click(function() {
        $(this).parent().addClass("on").siblings().removeClass("on");
    });

});
</script>


<div id="wrapper">

    <div id="container" class="">

        <h1 id="container_title">게시판관리</h1>
        <div class="container_wr">
<div class="local_ov01 local_ov">
    <a href="/gnuboard5/adm/board_list.php" class="ov_listall">전체목록</a>    <span class="btn_ov01"><span class="ov_txt">생성된 게시판수</span><span class="ov_num"> 11개</span></span>
</div>

<form name="fsearch" id="fsearch" class="local_sch01 local_sch" method="get">

<label for="sfl" class="sound_only">검색대상</label>
<select name="sfl" id="sfl">
    <option value="bo_table">TABLE</option>
    <option value="bo_subject">제목</option>
    <option value="a.gr_id">그룹ID</option>
</select>
<label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
<input type="text" name="stx" value="" id="stx" required="" class="required frm_input">
<input type="submit" value="검색" class="btn_submit">

</form>



<form name="fboardlist" id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
<input type="hidden" name="sst" value="a.gr_id, a.bo_table">
<input type="hidden" name="sod" value="asc">
<input type="hidden" name="sfl" value="">
<input type="hidden" name="stx" value="">
<input type="hidden" name="page" value="1">
<input type="hidden" name="token" value="">

<div class="tbl_head01 tbl_wrap">
    <table>
    <caption>게시판관리 목록</caption>
    <thead>
    <tr>
        <th scope="col">
            <label for="chkall" class="sound_only">게시판 전체</label>
            <input type="checkbox" name="chkall" value="1" id="chkall" onclick="check_all(this.form)">
        </th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=a.gr_id&amp;sod=asc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">그룹</a></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_table&amp;sod=asc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">TABLE</a></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_skin&amp;sod=desc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">스킨</a></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_mobile_skin&amp;sod=desc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">모바일<br>스킨</a></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_subject&amp;sod=asc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">제목</a></th>
        <th scope="col">읽기P<span class="sound_only">포인트</span></th>
        <th scope="col">쓰기P<span class="sound_only">포인트</span></th>
        <th scope="col">댓글P<span class="sound_only">포인트</span></th>
        <th scope="col">다운P<span class="sound_only">포인트</span></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_use_sns&amp;sod=asc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">SNS<br>사용</a></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_use_search&amp;sod=asc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">검색<br>사용</a></th>
        <th scope="col"><a href="/gnuboard5/adm/board_list.php?&amp;sst=bo_order&amp;sod=asc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">출력<br>순서</a></th>
        <th scope="col">접속기기</th>
        <th scope="col">관리</th>
    </tr>
    </thead>
    <tbody>
    
    <tr class="bg0">
        <td class="td_chk">
            <label for="chk_0" class="sound_only">자유게시판</label>
            <input type="checkbox" name="chk[]" value="0" id="chk_0">
        </td>
        <td>
                            <input type="hidden" name="gr_id[0]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[0]" value="board">
            <a href="https://demo.sir.kr/gnuboard5/board">board</a>
        </td>
        <td>
            <label for="bo_skin_0" class="sound_only">스킨</label>
            <select id="bo_skin_0" name="bo_skin[0]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_0" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_0" name="bo_mobile_skin[0]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_0" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[0]" value="자유게시판" id="bo_subject_0" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_0" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[0]" value="0" id="bo_read_point_0" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_0" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[0]" value="5" id="bo_write_point_0" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_0" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[0]" value="1" id="bo_comment_point_0" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_0" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[0]" value="0" id="bo_download_point_0" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_0" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[0]" value="1" id="bo_use_sns_0" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_0" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[0]" value="1" id="bo_use_search_0" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_0" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[0]" value="0" id="bo_order_0" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_0" class="sound_only">접속기기</label>
            <select name="bo_device[0]" id="bo_device_0">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=board&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=board" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg1">
        <td class="td_chk">
            <label for="chk_1" class="sound_only">BOARDPROTO</label>
            <input type="checkbox" name="chk[]" value="1" id="chk_1">
        </td>
        <td>
                            <input type="hidden" name="gr_id[1]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[1]" value="BOARDONE">
            <a href="https://demo.sir.kr/gnuboard5/BOARDONE">BOARDONE</a>
        </td>
        <td>
            <label for="bo_skin_1" class="sound_only">스킨</label>
            <select id="bo_skin_1" name="bo_skin[1]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_1" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_1" name="bo_mobile_skin[1]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_1" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[1]" value="BOARDPROTO" id="bo_subject_1" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_1" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[1]" value="0" id="bo_read_point_1" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_1" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[1]" value="5" id="bo_write_point_1" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_1" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[1]" value="1" id="bo_comment_point_1" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_1" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[1]" value="0" id="bo_download_point_1" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_1" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[1]" value="1" id="bo_use_sns_1" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_1" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[1]" value="1" id="bo_use_search_1" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_1" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[1]" value="0" id="bo_order_1" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_1" class="sound_only">접속기기</label>
            <select name="bo_device[1]" id="bo_device_1">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=BOARDONE&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=BOARDONE" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg0">
        <td class="td_chk">
            <label for="chk_2" class="sound_only">복사복사</label>
            <input type="checkbox" name="chk[]" value="2" id="chk_2">
        </td>
        <td>
                            <input type="hidden" name="gr_id[2]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[2]" value="cptest1">
            <a href="https://demo.sir.kr/gnuboard5/cptest1">cptest1</a>
        </td>
        <td>
            <label for="bo_skin_2" class="sound_only">스킨</label>
            <select id="bo_skin_2" name="bo_skin[2]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_2" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_2" name="bo_mobile_skin[2]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_2" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[2]" value="복사복사" id="bo_subject_2" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_2" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[2]" value="0" id="bo_read_point_2" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_2" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[2]" value="5" id="bo_write_point_2" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_2" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[2]" value="1" id="bo_comment_point_2" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_2" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[2]" value="0" id="bo_download_point_2" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_2" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[2]" value="1" id="bo_use_sns_2" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_2" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[2]" value="1" id="bo_use_search_2" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_2" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[2]" value="0" id="bo_order_2" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_2" class="sound_only">접속기기</label>
            <select name="bo_device[2]" id="bo_device_2">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=cptest1&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=cptest1" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg1">
        <td class="td_chk">
            <label for="chk_3" class="sound_only">자유게시판</label>
            <input type="checkbox" name="chk[]" value="3" id="chk_3">
        </td>
        <td>
                            <input type="hidden" name="gr_id[3]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[3]" value="free">
            <a href="https://demo.sir.kr/gnuboard5/free">free</a>
        </td>
        <td>
            <label for="bo_skin_3" class="sound_only">스킨</label>
            <select id="bo_skin_3" name="bo_skin[3]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_3" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_3" name="bo_mobile_skin[3]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_3" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[3]" value="자유게시판" id="bo_subject_3" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_3" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[3]" value="0" id="bo_read_point_3" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_3" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[3]" value="5" id="bo_write_point_3" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_3" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[3]" value="1" id="bo_comment_point_3" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_3" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[3]" value="0" id="bo_download_point_3" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_3" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[3]" value="1" id="bo_use_sns_3" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_3" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[3]" value="1" id="bo_use_search_3" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_3" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[3]" value="0" id="bo_order_3" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_3" class="sound_only">접속기기</label>
            <select name="bo_device[3]" id="bo_device_3">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=free&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=free" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg0">
        <td class="td_chk">
            <label for="chk_4" class="sound_only">갤러리</label>
            <input type="checkbox" name="chk[]" value="4" id="chk_4">
        </td>
        <td>
                            <input type="hidden" name="gr_id[4]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[4]" value="gallery">
            <a href="https://demo.sir.kr/gnuboard5/gallery">gallery</a>
        </td>
        <td>
            <label for="bo_skin_4" class="sound_only">스킨</label>
            <select id="bo_skin_4" name="bo_skin[4]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic">basic</option>
<option value="gallery" selected="selected">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_4" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_4" name="bo_mobile_skin[4]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic">basic</option>
<option value="gallery" selected="selected">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_4" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[4]" value="갤러리" id="bo_subject_4" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_4" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[4]" value="0" id="bo_read_point_4" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_4" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[4]" value="0" id="bo_write_point_4" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_4" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[4]" value="0" id="bo_comment_point_4" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_4" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[4]" value="0" id="bo_download_point_4" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_4" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[4]" value="1" id="bo_use_sns_4" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_4" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[4]" value="1" id="bo_use_search_4" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_4" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[4]" value="0" id="bo_order_4" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_4" class="sound_only">접속기기</label>
            <select name="bo_device[4]" id="bo_device_4">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=gallery&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=gallery" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg1">
        <td class="td_chk">
            <label for="chk_5" class="sound_only">zizziz</label>
            <input type="checkbox" name="chk[]" value="5" id="chk_5">
        </td>
        <td>
                            <input type="hidden" name="gr_id[5]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[5]" value="hol">
            <a href="https://demo.sir.kr/gnuboard5/hol">hol</a>
        </td>
        <td>
            <label for="bo_skin_5" class="sound_only">스킨</label>
            <select id="bo_skin_5" name="bo_skin[5]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_5" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_5" name="bo_mobile_skin[5]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_5" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[5]" value="zizziz" id="bo_subject_5" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_5" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[5]" value="0" id="bo_read_point_5" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_5" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[5]" value="5" id="bo_write_point_5" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_5" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[5]" value="1" id="bo_comment_point_5" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_5" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[5]" value="0" id="bo_download_point_5" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_5" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[5]" value="1" id="bo_use_sns_5" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_5" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[5]" value="1" id="bo_use_search_5" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_5" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[5]" value="0" id="bo_order_5" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_5" class="sound_only">접속기기</label>
            <select name="bo_device[5]" id="bo_device_5">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=hol&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=hol" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg0">
        <td class="td_chk">
            <label for="chk_6" class="sound_only">공지사항</label>
            <input type="checkbox" name="chk[]" value="6" id="chk_6">
        </td>
        <td>
                            <input type="hidden" name="gr_id[6]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[6]" value="notice">
            <a href="https://demo.sir.kr/gnuboard5/notice">notice</a>
        </td>
        <td>
            <label for="bo_skin_6" class="sound_only">스킨</label>
            <select id="bo_skin_6" name="bo_skin[6]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_6" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_6" name="bo_mobile_skin[6]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_6" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[6]" value="공지사항" id="bo_subject_6" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_6" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[6]" value="0" id="bo_read_point_6" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_6" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[6]" value="5" id="bo_write_point_6" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_6" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[6]" value="1" id="bo_comment_point_6" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_6" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[6]" value="0" id="bo_download_point_6" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_6" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[6]" value="1" id="bo_use_sns_6">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_6" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[6]" value="1" id="bo_use_search_6" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_6" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[6]" value="0" id="bo_order_6" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_6" class="sound_only">접속기기</label>
            <select name="bo_device[6]" id="bo_device_6">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=notice&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=notice" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg1">
        <td class="td_chk">
            <label for="chk_7" class="sound_only">포토</label>
            <input type="checkbox" name="chk[]" value="7" id="chk_7">
        </td>
        <td>
                            <input type="hidden" name="gr_id[7]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[7]" value="photo">
            <a href="https://demo.sir.kr/gnuboard5/photo">photo</a>
        </td>
        <td>
            <label for="bo_skin_7" class="sound_only">스킨</label>
            <select id="bo_skin_7" name="bo_skin[7]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic">basic</option>
<option value="gallery" selected="selected">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_7" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_7" name="bo_mobile_skin[7]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic">basic</option>
<option value="gallery" selected="selected">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_7" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[7]" value="포토" id="bo_subject_7" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_7" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[7]" value="0" id="bo_read_point_7" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_7" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[7]" value="0" id="bo_write_point_7" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_7" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[7]" value="0" id="bo_comment_point_7" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_7" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[7]" value="0" id="bo_download_point_7" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_7" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[7]" value="1" id="bo_use_sns_7">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_7" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[7]" value="1" id="bo_use_search_7" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_7" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[7]" value="0" id="bo_order_7" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_7" class="sound_only">접속기기</label>
            <select name="bo_device[7]" id="bo_device_7">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=photo&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=photo" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg0">
        <td class="td_chk">
            <label for="chk_8" class="sound_only">질문답변</label>
            <input type="checkbox" name="chk[]" value="8" id="chk_8">
        </td>
        <td>
                            <input type="hidden" name="gr_id[8]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[8]" value="qa">
            <a href="https://demo.sir.kr/gnuboard5/qa">qa</a>
        </td>
        <td>
            <label for="bo_skin_8" class="sound_only">스킨</label>
            <select id="bo_skin_8" name="bo_skin[8]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_8" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_8" name="bo_mobile_skin[8]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_8" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[8]" value="질문답변" id="bo_subject_8" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_8" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[8]" value="0" id="bo_read_point_8" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_8" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[8]" value="5" id="bo_write_point_8" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_8" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[8]" value="1" id="bo_comment_point_8" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_8" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[8]" value="0" id="bo_download_point_8" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_8" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[8]" value="1" id="bo_use_sns_8">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_8" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[8]" value="1" id="bo_use_search_8" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_8" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[8]" value="0" id="bo_order_8" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_8" class="sound_only">접속기기</label>
            <select name="bo_device[8]" id="bo_device_8">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=qa&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=qa" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg1">
        <td class="td_chk">
            <label for="chk_9" class="sound_only">notice</label>
            <input type="checkbox" name="chk[]" value="9" id="chk_9">
        </td>
        <td>
                            <input type="hidden" name="gr_id[9]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[9]" value="sorigyeol">
            <a href="https://demo.sir.kr/gnuboard5/sorigyeol">sorigyeol</a>
        </td>
        <td>
            <label for="bo_skin_9" class="sound_only">스킨</label>
            <select id="bo_skin_9" name="bo_skin[9]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_9" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_9" name="bo_mobile_skin[9]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_9" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[9]" value="notice" id="bo_subject_9" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_9" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[9]" value="0" id="bo_read_point_9" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_9" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[9]" value="5" id="bo_write_point_9" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_9" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[9]" value="1" id="bo_comment_point_9" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_9" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[9]" value="0" id="bo_download_point_9" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_9" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[9]" value="1" id="bo_use_sns_9" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_9" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[9]" value="1" id="bo_use_search_9" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_9" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[9]" value="0" id="bo_order_9" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_9" class="sound_only">접속기기</label>
            <select name="bo_device[9]" id="bo_device_9">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=sorigyeol&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=sorigyeol" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
    
    <tr class="bg0">
        <td class="td_chk">
            <label for="chk_10" class="sound_only">테스트트</label>
            <input type="checkbox" name="chk[]" value="10" id="chk_10">
        </td>
        <td>
                            <input type="hidden" name="gr_id[10]" value="shop">쇼핑몰                    </td>
        <td>
            <input type="hidden" name="board_table[10]" value="test22323">
            <a href="https://demo.sir.kr/gnuboard5/test22323">test22323</a>
        </td>
        <td>
            <label for="bo_skin_10" class="sound_only">스킨</label>
            <select id="bo_skin_10" name="bo_skin[10]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
<option value="n_gallery">n_gallery</option>
</select>        </td>
        <td>
            <label for="bo_mobile_skin_10" class="sound_only">모바일 스킨</label>
            <select id="bo_mobile_skin_10" name="bo_mobile_skin[10]">
<option value="">선택</option><option value="theme/basic">(테마) basic</option>
<option value="theme/gallery">(테마) gallery</option>
<option value="basic" selected="selected">basic</option>
<option value="gallery">gallery</option>
</select>        </td>
        <td>
            <label for="bo_subject_10" class="sound_only">게시판 제목<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="bo_subject[10]" value="테스트트" id="bo_subject_10" required="" class="required tbl_input bo_subject full_input" size="10">
        </td>
        <td class="td_numsmall">
            <label for="bo_read_point_10" class="sound_only">읽기 포인트</label>
            <input type="text" name="bo_read_point[10]" value="0" id="bo_read_point_10" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_write_point_10" class="sound_only">쓰기 포인트</label>
            <input type="text" name="bo_write_point[10]" value="5" id="bo_write_point_10" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_comment_point_10" class="sound_only">댓글 포인트</label>
            <input type="text" name="bo_comment_point[10]" value="1" id="bo_comment_point_10" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_download_point_10" class="sound_only">다운<br>포인트</label>
            <input type="text" name="bo_download_point[10]" value="0" id="bo_download_point_10" class="tbl_input" size="2">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_sns_10" class="sound_only">SNS<br>사용</label>
            <input type="checkbox" name="bo_use_sns[10]" value="1" id="bo_use_sns_10" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_use_search_10" class="sound_only">검색<br>사용</label>
            <input type="checkbox" name="bo_use_search[10]" value="1" id="bo_use_search_10" checked="">
        </td>
        <td class="td_numsmall">
            <label for="bo_order_10" class="sound_only">출력<br>순서</label>
            <input type="text" name="bo_order[10]" value="0" id="bo_order_10" class="tbl_input" size="2">
        </td>
        <td class="td_mngsmall">
            <label for="bo_device_10" class="sound_only">접속기기</label>
            <select name="bo_device[10]" id="bo_device_10">
                <option value="both" selected="selected">모두</option>
                <option value="pc">PC</option>
                <option value="mobile">모바일</option>
            </select>
        </td>
        <td class="td_mng td_mng_m">
            <a href="./board_form.php?w=u&amp;bo_table=test22323&amp;sst=&amp;sod=&amp;sfl=&amp;stx=&amp;page=" class="btn btn_03">수정</a>            <a href="./board_copy.php?bo_table=test22323" class="board_copy btn btn_02" target="win_board_copy">복사</a>        </td>
    </tr>
        </tbody>
    </table>
</div>

<div class="btn_fixed_top">
    <input type="submit" name="act_button" value="선택수정" onclick="document.pressed=this.value" class="btn_02 btn">
        </div>

</form>


<script>
function fboardlist_submit(f)
{
    if (!is_checked("chk[]")) {
        alert(document.pressed+" 하실 항목을 하나 이상 선택하세요.");
        return false;
    }

    if(document.pressed == "선택삭제") {
        if(!confirm("선택한 자료를 정말 삭제하시겠습니까?")) {
            return false;
        }
    }

    return true;
}

$(function(){
    $(".board_copy").click(function(){
        window.open(this.href, "win_board_copy", "left=100,top=100,width=550,height=450");
        return false;
    });
});
</script>


        <noscript>
            <p>
                귀하께서 사용하시는 브라우저는 현재 <strong>자바스크립트를 사용하지 않음</strong>으로 설정되어 있습니다.<br>
                <strong>자바스크립트를 사용하지 않음</strong>으로 설정하신 경우는 수정이나 삭제시 별도의 경고창이 나오지 않으므로 이점 주의하시기 바랍니다.
            </p>
        </noscript>

        </div>    
        <footer id="ft">
            <p>
                Copyright © demo.sir.kr. All rights reserved. YoungCart Version 5.4.5.3<br>
               <button type="button" class="scroll_top"><span class="top_img"></span><span class="top_txt">TOP</span></button>
           </p>
        </footer>
    </div>

</div>

<script>
$(".scroll_top").click(function(){
     $("body,html").animate({scrollTop:0},400);
})
</script>

<!-- <p>실행시간 : 0.001176118850708 -->

<script src="https://demo.sir.kr/gnuboard5/adm/admin.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery.anchorScroll.js?ver=191202"></script>
<script>
$(function(){

    var admin_head_height = $("#hd_top").height() + $("#container_title").height() + 5;

    $("a[href^='#']").anchorScroll({
        scrollSpeed: 0, // scroll speed
        offsetTop: admin_head_height, // offset for fixed top bars (defaults to 0)
        onScroll: function () { 
          // callback on scroll start
        },
        scrollEnd: function () { 
          // callback on scroll end
        }
    });

    var hide_menu = false;
    var mouse_event = false;
    var oldX = oldY = 0;

    $(document).mousemove(function(e) {
        if(oldX == 0) {
            oldX = e.pageX;
            oldY = e.pageY;
        }

        if(oldX != e.pageX || oldY != e.pageY) {
            mouse_event = true;
        }
    });

    // 주메뉴
    var $gnb = $(".gnb_1dli > a");
    $gnb.mouseover(function() {
        if(mouse_event) {
            $(".gnb_1dli").removeClass("gnb_1dli_over gnb_1dli_over2 gnb_1dli_on");
            $(this).parent().addClass("gnb_1dli_over gnb_1dli_on");
            menu_rearrange($(this).parent());
            hide_menu = false;
        }
    });

    $gnb.mouseout(function() {
        hide_menu = true;
    });

    $(".gnb_2dli").mouseover(function() {
        hide_menu = false;
    });

    $(".gnb_2dli").mouseout(function() {
        hide_menu = true;
    });

    $gnb.focusin(function() {
        $(".gnb_1dli").removeClass("gnb_1dli_over gnb_1dli_over2 gnb_1dli_on");
        $(this).parent().addClass("gnb_1dli_over gnb_1dli_on");
        menu_rearrange($(this).parent());
        hide_menu = false;
    });

    $gnb.focusout(function() {
        hide_menu = true;
    });

    $(".gnb_2da").focusin(function() {
        $(".gnb_1dli").removeClass("gnb_1dli_over gnb_1dli_over2 gnb_1dli_on");
        var $gnb_li = $(this).closest(".gnb_1dli").addClass("gnb_1dli_over gnb_1dli_on");
        menu_rearrange($(this).closest(".gnb_1dli"));
        hide_menu = false;
    });

    $(".gnb_2da").focusout(function() {
        hide_menu = true;
    });

    $('#gnb_1dul>li').bind('mouseleave',function(){
        submenu_hide();
    });

    $(document).bind('click focusin',function(){
        if(hide_menu) {
            submenu_hide();
        }
    });

    // 폰트 리사이즈 쿠키있으면 실행
    var font_resize_act = get_cookie("ck_font_resize_act");
    if(font_resize_act != "") {
        font_resize("container", font_resize_act);
    }
});

function submenu_hide() {
    $(".gnb_1dli").removeClass("gnb_1dli_over gnb_1dli_over2 gnb_1dli_on");
}

function menu_rearrange(el)
{
    var width = $("#gnb_1dul").width();
    var left = w1 = w2 = 0;
    var idx = $(".gnb_1dli").index(el);

    for(i=0; i<=idx; i++) {
        w1 = $(".gnb_1dli:eq("+i+")").outerWidth();
        w2 = $(".gnb_2dli > a:eq("+i+")").outerWidth(true);

        if((left + w2) > width) {
            el.removeClass("gnb_1dli_over").addClass("gnb_1dli_over2");
        }

        left += w1;
    }
}

</script>



<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->




</body></html>