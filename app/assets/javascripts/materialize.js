$(document).ready(function() {
  $('.dropdown-button').dropdown();
  $('select').material_select();
  $('#new-idea').val('New Text');
  $('#new-idea').trigger('autoresize');
});
