$(function(){
	$('#loginBtn').click(function(){
		loginAction();
	});


function loginAction(){
	
	var id = $('input:text[name=id]');
		if(id.val()== ""){
			window.alert("아이디를 입력해 주시기 바랍니다.");
			id.focus();
			return false;
		}
		
	var pw = $('input:password[name=pw]');
		 if(pw.val()==""){
			 window.alert("비밀번호를 입력해 주시기 바랍니다.");
			pw.focus();
			return false;
		}
		 $('.loginForm').submit();
	}
});