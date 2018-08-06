$(document).ready(function() {
  $('input').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });
  $('textarea').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });
});



// $( ".country" ).click(function() {
//   $index = $(this).index()
//   $container = $(this).closest('.page-section')
// });

$('.go-down').click(function(){
 $('html, body').animate({ scrollTop: (1100)}, 1000);
})
