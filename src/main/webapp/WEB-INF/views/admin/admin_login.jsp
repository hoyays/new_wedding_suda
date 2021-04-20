<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/css/admin/admin_login.css">
  <script type="text/javascript">
	function adminLoginCheck(){
		document.adminLogin.submit();
	}//js
</script>
</head>

<body>
  <header>
    <div id="header-left"><a href="../main/main"><span>웨딩수다 이동</span></a></div>
    <div id="header-right">Administrator</div>
  </header>

  <main>
    <form action="/admin/admin_loginCheck" method="POST" name="adminLogin">
      <div id="loginArea">
        <div id="loginBox">
          <table>
            <tr>
              <td class="input-box">
                <input type="text" name="admin_id" id="id" size="27" value="">
              </td>
              <td class="login-button" rowspan="2">
                <button type="button" onclick="adminLoginCheck()">LOGIN</button>
              </td>
            </tr>
            <tr>
              <td class="input-box">
                <input type="password" name="admin_pw" id="pw" size="27" value="">
              </td>
            </tr>
          </table>
        </div>
      </div>
    </form>
  </main>

  <footer>
    <p id="copyright">Copyright © 2021 <strong>WS ADMIN</strong>. All rights reserved.</p>
  </footer>

</body>
</html>