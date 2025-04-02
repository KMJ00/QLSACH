 $(document).ready(function(){
      var nav=document.querySelector(".main");
      $(window).scroll(function(){
        if($(this).scrollTop()>150){
            $('.scrollToTop').fadeIn();
           
            $('.mn').css('top','0px')
            $('.mn').css('width','100%')
        }
        else{
          $('.scrollToTop').fadeOut();
            $('.mn').css('position', '');
        }
      });
      $('.scrollToTop').click(function(){
        $('html,body').animate({scrollTop:0},800);
        return false;
      });
    });