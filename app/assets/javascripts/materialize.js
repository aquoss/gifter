$(document).on('turbolinks:load', function() {
  $('select').material_select();
  $('.dropdown-button').dropdown();
  $('.scrollspy').scrollSpy();
  $('.datepicker').pickadate({
   selectMonths: true, // Creates a dropdown to control month
   selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  $('#new-idea').val('New Text');
  $('#new-idea').trigger('autoresize');
});
