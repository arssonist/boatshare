$(document).ready(function(){
      $('.overlay').on('click',function(){
        $('#map div').toggleClass('scrolloff');

      });

      // $('#map').on('click',function(){
      //   $(this).removeClass('scrolloff');
      // });

      // $('#map div').mouseleave(function () {              // becuase the mouse up doesn't work...
  //     //   alert('test')
  //         $('#map div').addClass('scrolloff');            // set the pointer events to none when mouse leaves the map area
  //       $('#map').on("mousedown",function(){        // when mouse down, set the mouse events free
  //
  //         $('#map div').removeClass('scrolloff');
  //       });                                // or you can do it on some other event
  //     });
  //
  });
