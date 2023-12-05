	function checkMember(){
		//alert("test");
		//name 속성을 변수에 할당
		let form = document.member;
		let id = form.id.value;
		let pw1 = form.passwd.value;
		let pw2 = form.passwd2.value;
		let name = form.name.value;
		let btnChk = form.btnChk.value;
		
		//정규 표현식
		//비밀번호
		let regexPw1 = /[0-9]+/;  //숫자
		let regexPw2 = /[a-zA-Z]+/;  //영문자
		let regexPw3 = /[~!@#$%^&*()_+|]+/;  //특수문자
		//이름
		let regexName = /^[가-힣]+$/; //한글
		
		
		if(id.length < 4 || id.length > 15){
			alert("아이디는 4~15자까지 입력 가능합니다");
			id.select();
			return false;
		}else if(pw1.length < 8 || !regexPw1.test(pw1) || 
				!regexPw2.test(pw1) || !regexPw3.test(pw1) ){
			alert("비밀번호는 영문자, 숫자, 특수문자 포함 8자이상 입력해주세요");
			pw1.select();
			return false;
		}else if(pw1 != pw2){//pw1과 pw2 문자열이 일치하지 않으면
			alert("비밀번호가 일치하지 않습니다. 동일하게 입력해주세요");
			pw2.select();
			return false;
		}else if(!regexName.test(name)){//pw1과 pw2 문자열이 일치하지 않으면
			alert("이름은 한글로 입력해주세요");
			name.select();
			return false;
		}else if(btnChk == 'N'){
			alert("ID 중복 버튼을 눌러주세요.");
			return false;
		}else{
			form.submit();  //오류가 없으면 폼을 메인 컨트롤러로 전송
		} 
	}

function checkId(){
		//alert("test...")
		if(t_id.value == ""){
			alert("아이디를 입력해주세요");
			t_id.focus();
			return false;
		};
		$.ajax({
			type: "get",
			dataType: "text",
			url: "/member/checkid",
			data: {id: $("#t_id").val()}, //id속성이 서버로 전달됨
			success: function(data){
				if(data == "usable"){
					$("btnChk").attr("value", "Y");
					$("#message").text("사용할 수 있는 아이디 입니다.");
				}else{ //data == "not_usable"
					$("#message").text("이미 가입된 아이디 입니다.");
				}
			},
			error: function(){
				alert("에러 발생!!");
			}
		});
	}