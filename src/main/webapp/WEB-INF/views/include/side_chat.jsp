<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 250px;
			margin: 0 auto;
			padding: 25px
		}
		.container p{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: #7c71bf;
			margin-bottom: 20px;
		}
		.chating{
			background-color: #000;
			width: 250px;
			height: 300px;
			overflow: auto;
		}
		.chating .me{
			color: #F6F6F6;
			text-align: right;
		}
		.chating .others{
			color: #FFE400;
			text-align: left;
		}
		.chatinput{
			width: 100px;
			height: 25px;
		}
		#yourMsg{
			display: none;
		}
		.q_wrap {
    width: 111px;
    margin: 0 auto;
    position: fixed;
    top: 250px;
    left: 1500px; 
    z-index: 6;
}
	</style>
</head>


<script type="text/javascript">
	var ws;

	function wsOpen(){
		ws = new WebSocket("ws://" + location.host + "/chating");
		wsEvt();
	}
		
	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 동작
		}
		
		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				var d = JSON.parse(msg);
				if(d.type == "getId"){
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){
						$("#chating").append("<p class='me'>나 :" + d.msg + "</p>");	
					}else{
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}
						
				}else{
					console.warn("unknown type!")
				}
			}
		}

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
			}
		});
	}

	function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("로그인 후 이용가능합니다.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}

	function send() {
		var option ={
			type: "message",
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting").val()
		}
		ws.send(JSON.stringify(option))
		$('#chatting').val("");
	}
	 window.setInterval(function() {
	        var elem = document.getElementById('chating');
	        elem.scrollTop = elem.scrollHeight;
	    }, 0);
	
</script>
<body>
<div  class="q_wrap">
	<div id="container" class="container">
		<p>실시간채팅</p>
		<input type="hidden" id="sessionId" value="">
		
		<div id="chating" class="chating">
		</div>
		
		<div id="yourName">
			<table class="inputTable">
				<tr>
					<th><input class="chatinput"  type="text" name="userName" id="userName" value="${session_nickName}"></th>
					<th><button onclick="chatName()" id="startBtn">채팅시작하기</button></th>
				</tr>
			</table>
		</div>
		<div id="yourMsg">
			<table class="inputTable">
				<tr>
					<th>메시지</th>
					<th><input class="chatinput" id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
					<th><button onclick="send()" id="sendBtn">보내기</button></th>
				</tr>
			</table>
		</div>
	</div>

</div>
</body>
</html>