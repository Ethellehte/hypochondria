$(document).ready(function() {
  $(".measurement_list").on('click', '.measurement_edit_button', function(e) {
    e.preventDefault();
    var $li_element = $(this).parent('li').first();
    $li_element.empty();
      if ($li_element.attr('type_of_value') == "string_value") {
        $li_element.append("<input type='text' class='form-control'>")
      } else if ( ($li_element.attr('type_of_value') == "integer_value")) {
        $li_element.append("<input type='number' class='form-control'>")
      }
    $li_element.append("<a class='btn btn-primary measurement_edit_save_button'>save</a>")
    var $button = $li_element.find("a");
    var $input_field = $li_element.find("input")
    $button.click(function() {
      var data = { measurement: { id: $li_element.attr("measurement_id") } }
      data['measurement'][$li_element.attr('type_of_value')] = $input_field.val();
      var parsed_data = jQuery.param(data)
      $.ajax({
        type: "PATCH",
        url: "/measurements/" + $li_element.attr("measurement_id") + "?" + parsed_data,
        contentType: 'text/javascript',
          success: function(e, responce) {
           adding_measurement_to_list(responce)
           },
           error: function(jqXHR, textStatus, errorThrown) {
               console.log('FAILED! ERROR: ' + errorThrown);
           }
        });
    })
  });

      function adding_measurement_to_list(responce) {
        console.log(responce);
      }

});
