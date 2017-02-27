$(document).ready(function() {
  $('.dropdown-button').dropdown();
  $('select').material_select();
  $('.scrollspy').scrollSpy();
  $('#new-idea').val('New Text');
  $('#new-idea').trigger('autoresize');
});
