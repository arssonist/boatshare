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
  $('.create-res-modal').on('submit',function(event){
    event.preventDefault();

    var $formId = $('.create-res-modal').attr('id')
    var form = $(this)

    $.ajax({
      url: '/voyages/' + $formId + '/reservations',
      method: 'POST',
      data: $(this).serialize(),
      dataType: "json"
    }).done(function(response){
        console.log(response)
        $('#seats-left').text(response.seats_left)
        var reservation = $('<h5>').text("Your reservation includes seat place: " + response.seat_place + ", a life jacket size of: " + response.life_jacket + ", and special needs of: " + response.special_needs)
        form.append(reservation)
        $('input[type="submit"][value="Create Reservation"]').attr('disabled', false)




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
