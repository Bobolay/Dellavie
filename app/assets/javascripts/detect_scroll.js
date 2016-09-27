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
            // console.log('Up');
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        else if(st > lastScrollTop) {
            // console.log('Down');
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        }
        lastScrollTop = st;
    });
}
// Other browsers
else {
    $('body').on('mousewheel', function(e){
        if(e.originalEvent.wheelDelta > 0) {
            // console.log('Up');
            delay('custom_scroll', function(){custom_scroll("up");}, 1000, true, false)
        }
        else if(e.originalEvent.wheelDelta < 0) {
            // console.log('Down');
            delay('custom_scroll', function(){custom_scroll("down");}, 1000, true, false)
        }
    });
}