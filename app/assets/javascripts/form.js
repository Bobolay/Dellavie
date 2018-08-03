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
