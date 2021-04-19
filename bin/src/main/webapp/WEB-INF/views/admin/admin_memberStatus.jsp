<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<body>
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
                        <ul><li data-menu="200100"><a href="https://demo.sir.kr/gnuboard5/adm/member_list.php" class="gnb_2da  ">회원관리</a></li><li data-menu="200300"><a href="https://demo.sir.kr/gnuboard5/adm/mail_list.php" class="gnb_2da  ">회원메일발송</a></li><li data-menu="200800"><a href="https://demo.sir.kr/gnuboard5/adm/visit_list.php" class="gnb_2da gnb_grp_style gnb_grp_div">접속자집계</a></li><li data-menu="200810"><a href="https://demo.sir.kr/gnuboard5/adm/visit_search.php" class="gnb_2da gnb_grp_style gnb_grp_div">접속자검색</a></li><li data-menu="200200"><a href="https://demo.sir.kr/gnuboard5/adm/point_list.php" class="gnb_2da  ">포인트관리</a></li><li data-menu="200900"><a href="https://demo.sir.kr/gnuboard5/adm/poll_list.php" class="gnb_2da  ">투표관리</a></li></ul>                    </div>
                </div>
            </li>
                        <li class="gnb_li">
                <button type="button" class="btn_op menu-300 menu-order-3" title="게시판관리">게시판관리</button>
                <div class="gnb_oparea_wr">
                    <div class="gnb_oparea">
                        <h3>게시판관리</h3>
                        <ul><li data-menu="300100"><a href="https://demo.sir.kr/gnuboard5/adm/board_list.php" class="gnb_2da  ">게시판관리</a></li><li data-menu="300200"><a href="https://demo.sir.kr/gnuboard5/adm/boardgroup_list.php" class="gnb_2da  ">게시판그룹관리</a></li><li data-menu="300300"><a href="https://demo.sir.kr/gnuboard5/adm/popular_list.php" class="gnb_2da gnb_grp_style gnb_grp_div">인기검색어관리</a></li><li data-menu="300400"><a href="https://demo.sir.kr/gnuboard5/adm/popular_rank.php" class="gnb_2da gnb_grp_style gnb_grp_div">인기검색어순위</a></li><li data-menu="300500"><a href="https://demo.sir.kr/gnuboard5/adm/qa_config.php" class="gnb_2da  ">1:1문의설정</a></li><li data-menu="300600"><a href="https://demo.sir.kr/gnuboard5/adm/contentlist.php" class="gnb_2da gnb_grp_style gnb_grp_div">내용관리</a></li></ul>                    </div>
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

        <h1 id="container_title">관리자메인</h1>
        <div class="container_wr">
<section>
    <h2>신규가입회원 5건 목록</h2>
    <div class="local_desc02 local_desc">
        총회원수 2,799명 중 차단 0명, 탈퇴 : 37명
    </div>

    <div class="tbl_head01 tbl_wrap">
        <table>
        <caption>신규가입회원</caption>
        <thead>
        <tr>
            <th scope="col">회원아이디</th>
            <th scope="col">이름</th>
            <th scope="col">닉네임</th>
            <th scope="col">권한</th>
            <th scope="col">포인트</th>
            <th scope="col">수신</th>
            <th scope="col">공개</th>
            <th scope="col">인증</th>
            <th scope="col">차단</th>
            <th scope="col">그룹</th>
        </tr>
        </thead>
        <tbody>
                <tr>
            <td class="td_mbid">*****_********</td>
            <td class="td_mbname">******</td>
            <td class="td_mbname sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" class="sv_member" title="****** 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> ******</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19eXWOMcI5cXo6MYV1iXA--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19eXWOMcI5cXo6MYV1iXA--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_num">2</td>
            <td><a href="./point_list.php?sfl=mb_id&amp;stx=*****_********">1,000</a></td>
            <td class="td_boolean">아니오</td>
            <td class="td_boolean">아니오</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">아니오</td>
            <td class="td_category"></td>
        </tr>
                <tr>
            <td class="td_mbid">******</td>
            <td class="td_mbname">************</td>
            <td class="td_mbname sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=******" class="sv_member" title="************************ 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22" title=""></span> ************************</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=******" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=******&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=******" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=******" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=******" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=******&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=******" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=******" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_num">2</td>
            <td><a href="./point_list.php?sfl=mb_id&amp;stx=******">1,000</a></td>
            <td class="td_boolean">아니오</td>
            <td class="td_boolean">아니오</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">아니오</td>
            <td class="td_category"></td>
        </tr>
                <tr>
            <td class="td_mbid">*****_********</td>
            <td class="td_mbname">********</td>
            <td class="td_mbname sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" class="sv_member" title="******** 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> ********</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_num">2</td>
            <td><a href="./point_list.php?sfl=mb_id&amp;stx=*****_********">1,000</a></td>
            <td class="td_boolean">아니오</td>
            <td class="td_boolean">아니오</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">아니오</td>
            <td class="td_category"></td>
        </tr>
                <tr>
            <td class="td_mbid">***********</td>
            <td class="td_mbname">*********</td>
            <td class="td_mbname sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=***********" class="sv_member" title="********* 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> *********</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=***********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=***********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19eXXmMWo5cXpKMXV0-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=***********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=***********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=***********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=***********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19eXXmMWo5cXpKMXV0-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=***********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=***********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_num">2</td>
            <td><a href="./point_list.php?sfl=mb_id&amp;stx=***********">1,000</a></td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">아니오</td>
            <td class="td_category"></td>
        </tr>
                <tr>
            <td class="td_mbid">*******</td>
            <td class="td_mbname">****</td>
            <td class="td_mbname sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*******" class="sv_member" title="******* 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> *******</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*******" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*******&amp;name=%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj3VeXWOMWo5cXo6QXV1i" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*******" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*******" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*******" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*******&amp;name=%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj3VeXWOMWo5cXo6QXV1i" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*******" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*******" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_num">2</td>
            <td><a href="./point_list.php?sfl=mb_id&amp;stx=*******">1,000</a></td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">예</td>
            <td class="td_boolean">아니오</td>
            <td class="td_category"></td>
        </tr>
                </tbody>
        </table>
    </div>

    <div class="btn_list03 btn_list">
        <a href="./member_list.php">회원 전체보기</a>
    </div>

</section>


<section>
    <h2>최근게시물</h2>

    <div class="tbl_head01 tbl_wrap">
        <table>
        <caption>최근게시물</caption>
        <thead>
        <tr>
            <th scope="col">그룹</th>
            <th scope="col">게시판</th>
            <th scope="col">제목</th>
            <th scope="col">이름</th>
            <th scope="col">일시</th>
        </tr>
        </thead>
        <tbody>
        
        <tr>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/bbs/new.php?gr_id=shop">쇼핑몰</a></td>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/free">자유게시판</a></td>
            <td><a href="https://demo.sir.kr/gnuboard5/free/%EC%A7%88%EB%AC%B8%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%9D%B4%EA%B1%B0%EB%AD%94%EA%B0%80%EC%9A%94/">질문입니다.. 이거뭔가요??</a></td>
            <td class="td_mbname"><div>ㅁㅇㅁㄴㅇ</div></td>
            <td class="td_datetime">2021-04-16</td>
        </tr>

        
        <tr>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/bbs/new.php?gr_id=shop">쇼핑몰</a></td>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/board">자유게시판</a></td>
            <td><a href="https://demo.sir.kr/gnuboard5/board/sdfsdfsdfsd/">sdfsdfsdfsd</a></td>
            <td class="td_mbname"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=youngcart5" class="sv_member" title="영카트5 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> 영카트5</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=youngcart5" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=youngcart5&amp;name=%EC%98%81%EC%B9%B4%ED%8A%B85&amp;email=h5Wp2XWomKzWXtiXp9g-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=youngcart5" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=youngcart5" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=youngcart5" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=youngcart5&amp;name=%EC%98%81%EC%B9%B4%ED%8A%B85&amp;email=h5Wp2XWomKzWXtiXp9g-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=youngcart5" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=youngcart5" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-15</td>
        </tr>

        
        <tr>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/bbs/new.php?gr_id=shop">쇼핑몰</a></td>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/qa">질문답변</a></td>
            <td><a href="https://demo.sir.kr/gnuboard5/qa/1sgsgfs/#c_1154">댓글. 1sgsgfs</a></td>
            <td class="td_mbname"><div>ddd</div></td>
            <td class="td_datetime">2021-04-14</td>
        </tr>

        
        <tr>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/bbs/new.php?gr_id=shop">쇼핑몰</a></td>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/free">자유게시판</a></td>
            <td><a href="https://demo.sir.kr/gnuboard5/free/%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9%E3%84%B9/">ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</a></td>
            <td class="td_mbname"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=youngcart5" class="sv_member" title="영카트5 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> 영카트5</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=youngcart5" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=youngcart5&amp;name=%EC%98%81%EC%B9%B4%ED%8A%B85&amp;email=h5Wp2XWomKzWXtiXp9g-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=youngcart5" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=youngcart5" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=youngcart5" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=youngcart5&amp;name=%EC%98%81%EC%B9%B4%ED%8A%B85&amp;email=h5Wp2XWomKzWXtiXp9g-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=youngcart5" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=youngcart5" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-14</td>
        </tr>

        
        <tr>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/bbs/new.php?gr_id=shop">쇼핑몰</a></td>
            <td class="td_category"><a href="https://demo.sir.kr/gnuboard5/free">자유게시판</a></td>
            <td><a href="https://demo.sir.kr/gnuboard5/free/%E3%84%B4%ED%85%8C%EC%8A%A4%ED%8A%B8/">ㄴ테스트</a></td>
            <td class="td_mbname"><div>ㅇㄴㅁㅁㄴㅇㄴㅁ</div></td>
            <td class="td_datetime">2021-04-13</td>
        </tr>

                </tbody>
        </table>
    </div>

    <div class="btn_list03 btn_list">
        <a href="https://demo.sir.kr/gnuboard5/bbs/new.php">최근게시물 더보기</a>
    </div>
</section>


<section>
    <h2>최근 포인트 발생내역</h2>
    <div class="local_desc02 local_desc">
        전체 11,019 건 중 5건 목록
    </div>

    <div class="tbl_head01 tbl_wrap">
        <table>
        <caption>최근 포인트 발생내역</caption>
        <thead>
        <tr>
            <th scope="col">회원아이디</th>
            <th scope="col">이름</th>
            <th scope="col">닉네임</th>
            <th scope="col">일시</th>
            <th scope="col">포인트 내용</th>
            <th scope="col">포인트</th>
            <th scope="col">포인트합</th>
        </tr>
        </thead>
        <tbody>
        
        <tr>
            <td class="td_mbid"><a href="./point_list.php?sfl=mb_id&amp;stx=*****_********">*****_********</a></td>
            <td class="td_mbname">******</td>
            <td class="td_name sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" class="sv_member" title="****** 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> ******</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19eXWOMcI5cXo6MYV1iXA--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19eXWOMcI5cXo6MYV1iXA--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-16 17:03:32</td>
            <td>회원가입 축하</td>
            <td class="td_numbig">1,000</td>
            <td class="td_numbig">1,000</td>
        </tr>

        
        <tr>
            <td class="td_mbid"><a href="./point_list.php?sfl=mb_id&amp;stx=**********">**********</a></td>
            <td class="td_mbname">**********</td>
            <td class="td_name sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=**********" class="sv_member" title="********** 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> **********</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=**********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=**********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj3VeXWOMXo5cXo4-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=**********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=**********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=**********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=**********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj3VeXWOMXo5cXo4-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=**********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=**********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-16 10:47:54</td>
            <td>주문번호 2021041610464745 결제</td>
            <td class="td_numbig">-100</td>
            <td class="td_numbig">236,164</td>
        </tr>

        
        <tr>
            <td class="td_mbid"><a href="./point_list.php?sfl=mb_id&amp;stx=**********">**********</a></td>
            <td class="td_mbname">**********</td>
            <td class="td_name sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=**********" class="sv_member" title="********** 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> **********</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=**********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=**********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj3VeXWOMXo5cXo4-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=**********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=**********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=**********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=**********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj3VeXWOMXo5cXo4-" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=**********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=**********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-16 01:22:14</td>
            <td>2021-04-16 첫로그인</td>
            <td class="td_numbig">100</td>
            <td class="td_numbig">236,264</td>
        </tr>

        
        <tr>
            <td class="td_mbid"><a href="./point_list.php?sfl=mb_id&amp;stx=******">******</a></td>
            <td class="td_mbname">************</td>
            <td class="td_name sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=******" class="sv_member" title="************************ 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> ************************</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=******" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=******&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=******" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=******" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=******" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=******&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=******" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=******" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-15 23:03:32</td>
            <td>회원가입 축하</td>
            <td class="td_numbig">1,000</td>
            <td class="td_numbig">1,000</td>
        </tr>

        
        <tr>
            <td class="td_mbid"><a href="./point_list.php?sfl=mb_id&amp;stx=*****_********">*****_********</a></td>
            <td class="td_mbname">********</td>
            <td class="td_name sv_use"><div><span class="sv_wrap">
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" class="sv_member" title="******** 자기소개" target="_blank" rel="nofollow" onclick="return false;"><span class="profile_img"><img src="https://demo.sir.kr/gnuboard5/img/no_profile.gif" alt="no_profile" width="22" height="22"></span> ********</a>
<span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="https://demo.sir.kr/gnuboard5/bbs/memo_form.php?me_recv_mb_id=*****_********" onclick="win_memo(this.href); return false;">쪽지보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/formmail.php?mb_id=*****_********&amp;name=%2A%2A%2A%2A%2A%2A%2A%2A&amp;email=XVpgj19ec2OMWo5cYo6MXQ--" onclick="win_email(this.href); return false;">메일보내기</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/profile.php?mb_id=*****_********" onclick="win_profile(this.href); return false;">자기소개</a>
<a href="https://demo.sir.kr/gnuboard5/bbs/new.php?mb_id=*****_********" class="link_new_page" onclick="check_goto_new(this.href, event);">전체게시물</a>
</span>
</noscript></span></div></td>
            <td class="td_datetime">2021-04-15 22:59:12</td>
            <td>회원가입 축하</td>
            <td class="td_numbig">1,000</td>
            <td class="td_numbig">1,000</td>
        </tr>

                </tbody>
        </table>
    </div>

    <div class="btn_list03 btn_list">
        <a href="./point_list.php">포인트내역 전체보기</a>
    </div>
</section>


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

<!-- <p>실행시간 : 0.010680198669434 -->

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