$(document).on('ready page:load', function () {
  $('.card.clicable').on('click',function(e){
    if(e.target==this){
      window.location=$(this).find('.content a').attr('href')
      return false;
    }
  });
  
  $('.answers').on( 'keyup', 'textarea', function (e){
    $(this).css('height', 'auto' );
    $(this).height( this.scrollHeight );
  });
  $('.answers').find( 'textarea' ).keyup();


  $('.likes').on('click',function(){
    likes = $(this)
    counter = $(this).find('.counter')
    $.ajax({
      url: $(this).find('a').attr('href'),
      type: 'PUT',
      success: function(data) {
        prev = +counter.html()
        
        if(data.update=='like'){
          likes.removeClass('like-up').addClass('like-down')
          counter.html(prev+1)
        }else{
          likes.removeClass('like-down').addClass('like-up')
          counter.html(prev-1)
        }
      }
    });
        
    return false;
  });
});

