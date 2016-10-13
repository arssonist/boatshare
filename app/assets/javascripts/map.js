$(document).ready(function () {
      $('#map div').addClass('scrolloff');                // set the mouse events to none when doc is ready

      $('#map').on("mouseup",function(){          // lock it when mouse up
          $('#map div').addClass('scrolloff');
          //somehow the mouseup event doesn't get call...
      });
      $('#map').on("mousedown",function(){        // when mouse down, set the mouse events free
          $('#map div').removeClass('scrolloff');
      });
      $('#map div').mouseleave(function () {              // becuase the mouse up doesn't work...
          $('#map div').addClass('scrolloff');            // set the pointer events to none when mouse leaves the map area
                                                      // or you can do it on some other event
      });

  });
