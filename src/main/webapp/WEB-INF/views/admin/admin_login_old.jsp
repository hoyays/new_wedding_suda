<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="(주)에스아이알소프트">
<meta name="keywords" content="영카트5,그누보드5,GPL,무료쇼핑몰솔루션">
<meta name="description" content="영카트5는 자유롭게 사용할수 있는 GPL 라이센스 독립형 무료 쇼핑몰 솔루션 입니다.">

<title>웨딩수다 | 관리자 페이지</title>
<link rel="stylesheet" href="https://demo.sir.kr/gnuboard5/theme/basic/css/default.css?ver=191202">
<link rel="stylesheet" href="https://demo.sir.kr/gnuboard5/js/font-awesome/css/font-awesome.min.css?ver=191202">
<link rel="stylesheet" href="https://demo.sir.kr/gnuboard5/skin/member/basic/style.css?ver=191202">
<link rel="stylesheet" href="https://demo.sir.kr/gnuboard5/skin/social/style.css?ver=191202">
<link rel="shortcut icon" href="#">
<!--[if lte IE 8]>
<script src="https://demo.sir.kr/gnuboard5/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://demo.sir.kr/gnuboard5";
var g5_bbs_url   = "https://demo.sir.kr/gnuboard5/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://demo.sir.kr/gnuboard5/theme/basic/shop";
var g5_shop_url = "https://demo.sir.kr/gnuboard5/shop";
</script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery-1.12.4.min.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery-migrate-1.4.1.min.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/jquery.menu.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/common.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/wrest.js?ver=191202"></script>
<script src="https://demo.sir.kr/gnuboard5/js/placeholders.min.js?ver=191202"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function admin_sign_up(){
		alert("관리자 계정등록은 소속부서 담당자를 통해 문의해 주시기 바랍니다!");
	}//js
	
	function adminLoginCheck(){
		document.adminLogin.submit();
	}//js
</script>
</head>
<body>

<!-- 로그인 시작 { -->
<div id="mb_login" class="mbskin">
    <div class="mbskin_box">
        <h1>로그인</h1>
        <div class="mb_log_cate">
            <h2><span class="sound_only">회원</span>로그인</h2>
            <a class="join" onclick="admin_sign_up()">회원가입</a>
        </div>
        <form name="adminLogin" action="/admin/admin_loginCheck" method="post">
        <!-- <input type="hidden" name="url" value="%2Fgnuboard5%2Fadm%2Fshop_admin%2F"> -->
        
        <fieldset id="login_fs">
            <legend>회원로그인</legend>
            <label for="login_id" class="sound_only">회원아이디<strong class="sound_only"> 필수</strong></label>
            <input type="text" name="admin_id" id="admin_id" required="" class="frm_input required" size="20" maxlength="20" placeholder="아이디">
            <label for="login_pw" class="sound_only">비밀번호<strong class="sound_only"> 필수</strong></label>
            <input type="password" name="admin_pw" id="admin_pw" required="" class="frm_input required" size="20" maxlength="20" placeholder="비밀번호">
            <button type="submit" class="btn_submit" onclick="adminLoginCheck()">로그인</button>
            
            <div id="login_info">
                <div class="login_if_auto chk_box">
                    <input type="checkbox" name="auto_login" id="login_auto_login" class="selec_chk">
                    <label for="login_auto_login"><span></span> 자동로그인</label>  
                </div>
                <div class="login_if_lpl">
                    <a href="../main/main">웨딩수다 이동</a> 
                </div>
            </div>
        </fieldset> 
        </form>
        
<div id="sns_login" class="login-sns sns-wrap-32 sns-wrap-over">
    <h3>소셜계정으로 로그인</h3>
    <div class="sns-wrap">
                <a href="https://demo.sir.kr/gnuboard5/plugin/social/popup.php?provider=naver&amp;url=%2Fgnuboard5%2Fadm%2Fshop_admin%2F" class="sns-icon social_link sns-naver" title="네이버">
            <span class="ico"></span>
            <span class="txt">네이버<i> 로그인</i></span>
        </a>
                        <a href="https://demo.sir.kr/gnuboard5/plugin/social/popup.php?provider=kakao&amp;url=%2Fgnuboard5%2Fadm%2Fshop_admin%2F" class="sns-icon social_link sns-kakao" title="카카오">
            <span class="ico"></span>
            <span class="txt">카카오<i> 로그인</i></span>
        </a>
                        <a href="https://demo.sir.kr/gnuboard5/plugin/social/popup.php?provider=facebook&amp;url=%2Fgnuboard5%2Fadm%2Fshop_admin%2F" class="sns-icon social_link sns-facebook" title="페이스북">
            <span class="ico"></span>
            <span class="txt">페이스북<i> 로그인</i></span>
        </a>
                        <a href="https://demo.sir.kr/gnuboard5/plugin/social/popup.php?provider=google&amp;url=%2Fgnuboard5%2Fadm%2Fshop_admin%2F" class="sns-icon social_link sns-google" title="구글">
            <span class="ico"></span>
            <span class="txt">구글<i> 로그인</i></span>
        </a>
                        <a href="https://demo.sir.kr/gnuboard5/plugin/social/popup.php?provider=twitter&amp;url=%2Fgnuboard5%2Fadm%2Fshop_admin%2F" class="sns-icon social_link sns-twitter" title="트위터">
            <span class="ico"></span>
            <span class="txt">트위터<i> 로그인</i></span>
        </a>
                        <a href="https://demo.sir.kr/gnuboard5/plugin/social/popup.php?provider=payco&amp;url=%2Fgnuboard5%2Fadm%2Fshop_admin%2F" class="sns-icon social_link sns-payco" title="페이코">
            <span class="ico"></span>
            <span class="txt">페이코<i> 로그인</i></span>
        </a>
        
                <script>
            jQuery(function($){
                $(".sns-wrap").on("click", "a.social_link", function(e){
                    e.preventDefault();

                    var pop_url = $(this).attr("href");
                    var newWin = window.open(
                        pop_url, 
                        "social_sing_on", 
                        "location=0,status=0,scrollbars=1,width=600,height=500"
                    );

                    if(!newWin || newWin.closed || typeof newWin.closed=='undefined')
                         alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');

                    return false;
                });
            });
        </script>
        
    </div>
</div>    </div>

        
	<!-- 주문하기, 신청하기 -->
	
        
</div>

<script>
jQuery(function($){
    $("#login_auto_login").click(function(){
        if (this.checked) {
            this.checked = confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?");
        }
    });
});

function flogin_submit(f)
{
    if( $( document.body ).triggerHandler( 'login_sumit', [f, 'flogin'] ) !== false ){
        return true;
    }
    return false;
}
</script>
<!-- } 로그인 끝 -->



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