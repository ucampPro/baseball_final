$(function(){
	$('#loginBtn').click(function(){
		loginAction();
	});


function loginAction(){
	
	var id = $('input:text[name=id]');
		if(id.val()== ""){
			window.alert("���̵� �Է��� �ֽñ� �ٶ��ϴ�.");
			id.focus();
			return false;
		}
		
	var pw = $('input:password[name=pw]');
		 if(pw.val()==""){
			 window.alert("��й�ȣ�� �Է��� �ֽñ� �ٶ��ϴ�.");
			pw.focus();
			return false;
		}
		 $('.loginForm').submit();
	}
});