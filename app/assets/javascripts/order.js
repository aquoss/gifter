$(document).ready(function(){
  $('#shipping-select').on('change', function(){
    if (this.value == 1) {
      $('#select-first-name').val($('#recipient-address').data('first-name'));
      $('#select-last-name').val($('#recipient-address').data('last-name'));
      $('#select-address-line-1').val($('#recipient-address').data('address-line-1'));
      $('#select-address-line-2').val($('#recipient-address').data('address-line-2'));
      $('#select-zip-code').val($('#recipient-address').data('zip-code'));
      $('#select-city').val($('#recipient-address').data('city'));
      $('#select-state').val($('#recipient-address').data('state'));
      $('#select-country').val($('#recipient-address').data('country'));
    } else {
      $('#select-first-name').val($('#user-address').data('first-name'));
      $('#select-last-name').val($('#user-address').data('last-name'));
      $('#select-address-line-1').val($('#user-address').data('address-line-1'));
      $('#select-address-line-2').val($('#user-address').data('address-line-2'));
      $('#select-zip-code').val($('#user-address').data('zip-code'));
      $('#select-city').val($('#user-address').data('city'));
      $('#select-state').val($('#user-address').data('state'));
      $('#select-country').val($('#user-address').data('country'));
    }
  })

  // $('#order-form').trigger('submit.rails');


})
