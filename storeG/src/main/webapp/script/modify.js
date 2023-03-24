let check = 0;
let ctx = $("#msg").attr("data-val");

function validCheck(form){
	
	
	if(!form.phone.value.match( /010-\d{3,4}-\d{4}/)){
		alert("전화번호 형식이 다릅니다");
		form.phone.value="010-1234-1234";
		form.phone.focus();
		return false;
	}
	
	form.submit();
	
}


$("#id").keyup(function(e) {
		 if(e.keyCode=='8'){
			 check =0;
		 }
	  $("#id").css("border", "");
	});
	
	let inputs =  document.querySelectorAll("input"); 
    inputs.forEach((input)=>{
        input.onchange = function(){
            $("#msg").html("");
        };
    })