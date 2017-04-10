require "bootstrap_form_address_field/version"
require "bootstrap_form_address_field/address_field"
require "bootstrap_form/form_builder"

module BootstrapFormAddressField
  include AddressField

  module Rails
    class Engine < ::Rails::Engine
    end
  end
end

module BootstrapForm
  class FormBuilder
    include BootstrapFormAddressField
  end
end
