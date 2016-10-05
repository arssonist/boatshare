$(document).ready(function(){
  $('#voyage-button').click(function(event){
    event.preventDefault();
       $('.modal').fadeIn('slow');
    })
  $('.close').click(function(event){
    event.preventDefault();
    $('.modal').fadeOut('slow');
  })

  $('.modal').click(function(event){
      $(this).fadeOut('slow');
  })
  $('.voyage-form-class').click(function(event){
      event.stopPropagation();
  })
})
