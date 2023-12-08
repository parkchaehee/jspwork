	function checkMember(){

		let form = document.member;
		let id = form.id.value;
		let pw1 = form.passwd.value;
		let pw2 = form.passwd2.value;
		let name = form.name.value;
		

		let regexPw1 = /[0-9]+/;  //숫자
		let regexPw2 = /[a-zA-Z]+/;  //영문자
		let regexPw3 = /[~!@#$%^&*()_+|]+/;  //특수문자
		let regexName = /^[가-힣]+$/; //한글
		
		
		if(id.length <= 5 || id.length >= 12){
			alert("아이디는 5 ~ 12자까지 입력해주세요");
			id.select();
			return false;
		}else if(pw1.length < 7 || !regexPw1.test(pw1) || 
				!regexPw2.test(pw1) || !regexPw3.test(pw1) ){
			alert("영문자, 숫자, 특수문자 포함 7자 이상 입력해주세요");
			pw1.select();
			return false;
		}else if(pw1 != pw2){//pw1과 pw2 문자열이 일치하지 않으면
			alert("비밀번호를 동일하게 입력해주세요");
			pw2.select();
			return false;
		}else if(!regexName.test(name)){
			alert("이름은 한글로 입력해주세요");
			name.select();
			return false;
		}else{
			form.submit();  //오류가 없으면 폼을 메인 컨트롤러로 전송
		} 
	}

	}