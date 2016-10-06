// to make modal window fade in
$(document).ready(function(){
  $('#voyage-button').click(function(event){
       $('.modal').fadeIn('slow');
    })
    // to allow the close button to close modal window
  $('.close').click(function(event){
    event.preventDefault();
    $('.modal').fadeOut('slow');
  })
  // to stop close of window on completion to update reservation
  // NEXT: Flash notice and change number
  $('#reservation-form-id').on('submit',function(event){
    event.preventDefault();
    $.ajax({
      url:'/voyages/2/reservations',
      method:'POST',
      data:$(this).serialize(),
      dataType:"json"
    }).done(function(response){
      $('#seats-left').text(response.seats_left)
    


    })
  })


  $
// makes window fade out on background click
  $('.modal').click(function(event){
      $(this).fadeOut('slow');
  })
  $('.voyage-form-class').click(function(event){
      event.stopPropagation();
  })
})
