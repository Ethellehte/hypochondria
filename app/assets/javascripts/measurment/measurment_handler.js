$(document).ready(function() {
  $("#measurement_category_id").on("change", function() {
    var $this = $(this)
    var data_attribute = $this.children('option:selected').data('measurment-type')
    var $string_field = $(".measurment_string_field")
    var $integer_field = $(".measurment_integer_field")
    if (data_attribute == "string_value") {
      $string_field.show();
      $integer_field.hide();
    } else if (data_attribute == "integer_value") {
      $integer_field.show();
      $string_field.hide();
    }
  });
});
