 function rain()
  {
      let amount = 200;
      let body = document.querySelector('body');
      let i = 0;
      while (i < amount)
      {
          let drop = document.createElement('i');

          let size = Math.random() * 5;
          let posX = Math.floor(Math.random() * window.innerWidth);
          let delay = Math.random() * -20;
          let duration = Math.random() * 5;

          drop.style.width = 0.2 + size + 'px';
          drop.style.left = posX + 'px';
          drop.style.animationDelay = delay + 's';
          drop.style.animationDuration = 1 + duration + 's';
          body.appendChild(drop);
          i++
      }
  }
 
  rain();
 		function login(){
    var user=document.getElementById("user").value;
      var pass=document.getElementById("password").value;
      if(user=="Admin123" && pass=="Abc@123"){
        window.location.href="homepage.html";
    }else if(user==""|| user!="Admin123"){
      alert("nhap lai Tên đăng nhập")
    }else if(pass==""|| pass!="Abc@123"){
      alert("nhap lai password")
    }
  }
	  function miss(){
	  	document.getElementById("form1").style.display="none";
	  	document.getElementById("form2").style.display="block";
	  }
	  function back(){
	  	document.getElementById("form1").style.display="block";
	  	document.getElementById("form2").style.display="none";
	  }
	 function sdt(event) {
  event.preventDefault();  
    alert("Gửi thành công vui lòng đợi hỗ trợ từ chúng tôi.");
    document.getElementById("form1").style.display = "block";
    document.getElementById("form2").style.display = "none"; 
}	