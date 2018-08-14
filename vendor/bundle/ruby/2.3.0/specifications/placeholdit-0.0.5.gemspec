# -*- encoding: utf-8 -*-
# stub: placeholdit 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "placeholdit".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeff Mehlhoff".freeze]
  s.date = "2015-02-23"
  s.description = "A Rails view helper for placeholder images via http://placehold.it".freeze
  s.email = ["jeffmehlhoff@mac.com".freeze]
  s.homepage = "http://github.com/ohokay/placeholdit".freeze
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "A Rails view helper for placeholder images via http://placehold.it".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
