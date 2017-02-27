$(document).ready(function() {
  $('.dropdown-button').dropdown();
  $('select').material_select();
  $('.scrollspy').scrollSpy();
  $('.datepicker').pickadate({
   selectMonths: true, // Creates a dropdown to control month
   selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  $('#new-idea').val('New Text');
  $('#new-idea').trigger('autoresize');
});
