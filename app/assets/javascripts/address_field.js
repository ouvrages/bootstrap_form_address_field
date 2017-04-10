//= require typeahead
//= require typeahead-addresspicker.min

$(document).ready(function() {

  $(".address_picker").each(function(index, element) {
    var $el = $(element);
    var $lat = $el.find(".latitude");
    var $long = $el.find(".longitude");
    var $address = $el.find(".address");
    var $map = $el.find(".map");

    var position = new google.maps.LatLng({
      lat: parseFloat($lat.val()),
      lng: parseFloat($long.val()),
    });
    var options = {
      map: {
        id: $map,
      },
      reverseGeocoding: true,
    };

    if (!isNaN(position.lat())) {
      options = $.extend(true, options, {
        map: {
          zoom: 10,
          center: position,
        },
        marker: {
          visible: true,
          position: position,
        }
      });
    }

    var addressPicker = new AddressPicker(options);

    $address.typeahead(null, {
      displayKey: 'description',
      source: addressPicker.ttAdapter(),
    });
    $address.bind('typeahead:selected', addressPicker.updateMap);
    $address.bind('typeahead:cursorchanged', addressPicker.updateMap);

    updateLatLong = function(event, result) {
      $address.val(result.placeResult.formatted_address);
      $lat.val(result.latitude);
      $long.val(result.longitude);
    }
    $(addressPicker).on("addresspicker:selected", updateLatLong);
  });
});
