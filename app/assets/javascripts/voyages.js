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
  $("input[type='submit'][name='commit']").click(function(event){
    // event.preventDefault();
    // console.log( 'STOPPED FORM FROM SUBMITTING!' ); /// TEMP
    //   // $(this).
  })


  $
// makes window fade out on background click
  $('.modal').click(function(event){
      $(this).fadeOut('slow');
  })
  $('.voyage-form-class').click(function(event){
      // event.stopPropagation();
  })
})
