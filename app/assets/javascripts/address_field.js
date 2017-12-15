//= require typeahead
//= require typeahead-addresspicker.min
//= require address_picker_field

$(document).on("turbolinks:load", function() {
  $(".address_picker").each(function(index, element) {
    var $el = $(element);
    $el.addressPickerField();
  });
});
