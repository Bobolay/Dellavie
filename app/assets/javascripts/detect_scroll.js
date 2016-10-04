$(document).on("ready", function(){

    //     A L L     B R O W S E R S     D E T E C T

    $('body').bind('mousewheel', function(e){
        if ($('.coffee-sort-popup.visible').length) {
            return
        }
        if(e.originalEvent.wheelDelta > 0) {
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        else if(e.originalEvent.wheelDelta < 0) {
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        }
    });

    //     F I R E F O X     D E T E C T
    
    $(window).bind('DOMMouseScroll', function(e){
        if(e.originalEvent.detail > 0) {
         //scroll down
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        } else {
         //scroll up
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        //prevent page fom scrolling
        // return false;
    });


    $('.page-section').swipe( {
        //Generic swipe handler for all directions

        swipeStatus:function(event, phase, direction, distance, duration, fingerCount, fingerData) {
            //console.log('who is this: ', this)
            if ($('.coffee-sort-popup.visible').length) {
               // event.preventDefault()
                return
            }
            if (direction == 'down') {
                var active_section_index = $(this).index()
                var scroll_top = $("body").scrollTop()
                var is_last_section = $(this).is(':last-child')
                var is_medium_section = active_section_index > 0 && !is_last_section
                if(active_section_index > 0  ){
                    if ((is_last_section && scroll_top == 0) || is_medium_section ){
                        console.log('>0')
                        event.preventDefault()
                    }
                }
                delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
            }
            else if (direction == "up") {
                if($(this).next().is(":last-child")){
                    event.preventDefault()
                }
                delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
            }
        },
     
        //Default is 75px, set to 0 for demo so any distance triggers swipe
       threshold:0,
       allowPageScroll: true,
       preventDefaultEvents: false
    });

});

