# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paperclip-watermark"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Vik Ewoods"]
  s.date = "2013-03-20"
  s.description = "Paperclip Watermark processor"
  s.email = ["support@voroninstudio.eu"]
  s.homepage = "http://vikewoods.com/rails/paperclip-watermark"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Paperclip Watermark processor"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paperclip>, [">= 2.3.8"])
    else
      s.add_dependency(%q<paperclip>, [">= 2.3.8"])
    end
  else
    s.add_dependency(%q<paperclip>, [">= 2.3.8"])
  end
end
