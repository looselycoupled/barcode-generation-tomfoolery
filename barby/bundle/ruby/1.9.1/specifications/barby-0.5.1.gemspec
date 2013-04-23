# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "barby"
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tore Darell"]
  s.date = "2013-03-12"
  s.description = "Barby creates barcodes."
  s.email = "toredarell@gmail.com"
  s.extra_rdoc_files = ["README"]
  s.files = ["README"]
  s.homepage = "http://toretore.github.com/barby"
  s.post_install_message = "\n*** NEW REQUIRE POLICY ***\"\nBarby no longer require all barcode symbologies by default. You'll have\nto require the ones you need. For example, if you need EAN-13,\nrequire 'barby/barcode/ean_13'; For a full list of symbologies and their\nfilenames, see README.\n***\n\n"
  s.require_paths = ["lib"]
  s.rubyforge_project = "barby"
  s.rubygems_version = "2.0.3"
  s.summary = "The Ruby barcode generator"
end
