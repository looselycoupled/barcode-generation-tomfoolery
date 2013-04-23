# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "barcodes"
  s.version = "0.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Wright"]
  s.date = "2012-09-18"
  s.description = "Barcodes is a RubyGem for creating and rendering common barcode symbologies."
  s.email = ["acwrightdesign@gmail.com"]
  s.executables = ["barcodes"]
  s.files = ["bin/barcodes"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubyforge_project = "barcodes"
  s.rubygems_version = "2.0.3"
  s.summary = "Barcode creation using Ruby!"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<prawn>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<prawn>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<prawn>, [">= 0"])
  end
end
