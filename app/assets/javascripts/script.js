//= reqiure slider
$(document).ready(function() {
  new Slider($('.slider'),$('.enum'));
  setTimeout(function() {
    $('.alert').hide()
  }, 1000)
});
