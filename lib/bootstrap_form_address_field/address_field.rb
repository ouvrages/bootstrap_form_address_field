module AddressField
  def address_field(method, options = {})
    address = "#{self.object_name}[#{address}]"
    latitude = "#{self.object_name}[#{latitude}]"
    longitude = "#{self.object_name}[#{longitude}]"

    address_input = self.text_field(:address, class: "address")
    latitude_input = self.hidden_field(:latitude, class: "latitude")
    longitude_input = self.hidden_field(:longitude, class: "longitude")
    map_div = content_tag(:div, nil, class: "map")

    content_tag(:div, class: "address_picker") do
      [address_input, latitude_input, longitude_input, map_div].join(" ").html_safe
    end
  end
end
