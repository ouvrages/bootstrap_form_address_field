# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_form_address_field/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap_form_address_field"
  spec.version       = BootstrapFormAddressField::VERSION
  spec.authors       = ["Ouvrages"]
  spec.email         = ["contact@ouvrages-web.fr"]

  spec.summary       = "BootstrapFormBuilder extension"
  spec.description   = "Add a address_field to Bootstrap FormBuilder"
  spec.homepage      = "http://ouvrages-web.fr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "bootstrap_form", '>= 2.5.2'
end
