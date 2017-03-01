$(document).ready(function(){
  if ($('#shipping-select').val() === '1') {
    $('#select-first-name').val($('#recipient-address').data('first_name'));
    $('#select-last-name').val($('#recipient-address').data('last_name'));
    $('#select-address-line-1').val($('#recipient-address').data('address_line_1'));
    $('#select-address-line-2').val($('#recipient-address').data('address_line_2'));
    $('#select-zip-code').val($('#recipient-address').data('zip_code'));
    $('#select-city').val($('#recipient-address').data('city'));
    $('#select-state').val($('#recipient-address').data('state'));
    $('#select-country').val($('#recipient-address').data('country'));
  } else {
    $('#select-first-name').val($('#user-address').data('first_name'));
    $('#select-last-name').val($('#user-address').data('last_name'));
    $('#select-address-line-1').val($('#user-address').data('address_line_1'));
    $('#select-address-line-2').val($('#user-address').data('address_line_2'));
    $('#select-zip-code').val($('#user-address').data('zip_code'));
    $('#select-city').val($('#user-address').data('city'));
    $('#select-state').val($('#user-address').data('state'));
    $('#select-country').val($('#user-address').data('country'));
  }

})
