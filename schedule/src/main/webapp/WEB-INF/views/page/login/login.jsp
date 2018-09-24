<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="./resources/img/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
</head>
<body>
	
	<div class="container-login100" style="background-image: url('./resources/img/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" >
				<span class="login100-form-title p-b-37">
					Sign In
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
					<input class="input100" type="text" name="username" placeholder="username or email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="pass" placeholder="password">
					<span class="focus-input100"></span>
				</div>
				
				<div class="m-b-25">
					<span class="input100"><input type="checkbox" id="saveIdChk">&nbsp;&nbsp;아이디저장</span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">
						로그인
					</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						Or login with
					</span>
				</div>

				<div class="flex-c p-b-112">
					<a href="#" class="login100-social-item">
						<i class="fa fa-facebook-f"></i>
					</a>

					<a href="#" class="login100-social-item">
						<img src="./resources/img/icons/icon-google.png" alt="GOOGLE">
					</a>
				</div>
			</form>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	
<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
<script src="./resources/vendor/bootstrap/js/popper.js"></script>
<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/vendor/select2/select2.min.js"></script>
<script src="./resources/vendor/daterangepicker/moment.min.js"></script>
<script src="./resources/vendor/daterangepicker/daterangepicker.js"></script>
<script src="./resources/vendor/countdowntime/countdowntime.js"></script>
<script src="./resources/js/main.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	//if($("input[name='username']").val() == null $("input[name='username']").val() == ""){ $("input[name='username']").focus(); }  
	
	// 기본적으로 쿠키값을 불러와 세팅한다  없더라도 공백으로 셋팅되기에 문제없다.
	var saveUserId = getCookie("saveUserId");
	$("input[name='username']").val(saveUserId);
	if($("input[name='username']").val() != ""){ $("#saveIdChk").attr("checked", true); }
	
	console.log($("input[name='username']").val());
	console.log("쿠키값 : "+saveUserId);



	// 체크박스에 변화가 있을때
	$("#saveIdChk").change(function(){console.log("체크드");
		// 체크가박스가 체크되어 있을경우
		if($("#saveIdChk").prop("checked") == true){
			var saveUserId = $("input[name='username']").val();
			setCookie("saveUserId", saveUserId, 7);
		}else{ deleteCookie("saveUserId"); }

	});

 	// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='username']").keyup(function(){ 			// ID 입력 칸에 ID를 입력할 때,
        if($("#saveIdChk").is(":checked")){ 				// ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='username']").val();
            setCookie("saveUserId", saveUserId, 7); 		// 7일 동안 쿠키 보관
        }
    });

});

		
		function setCookie(cookieName, value, exdays){
		    var exdate = new Date();
		    exdate.setDate(exdate.getDate() + exdays);
		    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
		    document.cookie = cookieName + "=" + cookieValue;
		}
		 
		function deleteCookie(cookieName){
		    var expireDate = new Date();
		    expireDate.setDate(expireDate.getDate() - 1);
		    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
		}
		 
		function getCookie(cookieName) {
		    cookieName = cookieName + '=';
		    var cookieData = document.cookie;
		    var start = cookieData.indexOf(cookieName);
		    var cookieValue = '';
		    if(start != -1){
		        start += cookieName.length;
		        var end = cookieData.indexOf(';', start);
		        if(end == -1)end = cookieData.length;
		        cookieValue = cookieData.substring(start, end);
		    }
		    return unescape(cookieValue);
		}
</script>
	</body>
</html>