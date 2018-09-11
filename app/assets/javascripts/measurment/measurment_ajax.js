$(document).ready(function() {
  $('.measurment_string_field, .measurment_integer_field').on('click', '.measurement_submit', function (e){
    e.preventDefault();
    var $input_field = $(this).siblings('input').first();
    var data = { measurement: { measurement_category_id: $('#measurement_category_id').val() } }
    data['measurement'][$input_field.attr('type_of_value')] = $input_field.val();
    var parsed_data = jQuery.param(data)
   $.ajax({
     type: "POST",
     url: "/measurements?" + parsed_data,
     contentType: 'text/javascript',
       success: function(e, responce) {
        adding_measurement_to_list(responce)
        },
        error: function() {
            alert('Error occured');
        }
     });
   })

   function adding_measurement_to_list(responce) {
     console.log(responce);
   }

})
