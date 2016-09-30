// Detect IE version
var iev=0;
var ieold = (/MSIE (\d+\.\d+);/.test(navigator.userAgent));
var trident = !!navigator.userAgent.match(/Trident\/7.0/);
var rv=navigator.userAgent.indexOf("rv:11.0");

if (ieold) iev=new Number(RegExp.$1);
if (navigator.appVersion.indexOf("MSIE 10") != -1) iev=10;
if (trident&&rv!=-1) iev=11;

// Firefox or IE 11
if(typeof InstallTrigger !== 'undefined' || iev == 11) {
    var lastScrollTop = 0;
    $(window).on('scroll', function() {
        st = $(this).scrollTop();
        if(st < lastScrollTop) {
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        else if(st > lastScrollTop) {
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        }
        lastScrollTop = st;
    });
}
// Other browsers
else {
    $('body').on('mousewheel', function(e){
        if(e.originalEvent.wheelDelta > 0) {
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        else if(e.originalEvent.wheelDelta < 0) {
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        }
    });
}



$(document).swipe( {
    //Generic swipe handler for all directions
    swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
        // $(this).text("You swiped " + direction );   
        if (direction == 'down') {
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        else {
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        }
    },
    //Default is 75px, set to 0 for demo so any distance triggers swipe
   threshold:75
});