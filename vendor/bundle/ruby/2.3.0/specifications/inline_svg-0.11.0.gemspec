# -*- encoding: utf-8 -*-
# stub: inline_svg 0.11.0 ruby lib

Gem::Specification.new do |s|
  s.name = "inline_svg".freeze
  s.version = "0.11.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["James Martin".freeze]
  s.date = "2016-09-01"
  s.description = "Get an SVG into your view and then style it with CSS.".freeze
  s.email = ["inline_svg@jmrtn.com".freeze]
  s.homepage = "https://github.com/jamesmartin/inline_svg".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "Embeds an SVG document, inline.".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["= 0.2.2"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
      s.add_runtime_dependency(%q<loofah>.freeze, [">= 2.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["= 0.2.2"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
      s.add_dependency(%q<loofah>.freeze, [">= 2.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["= 0.2.2"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
    s.add_dependency(%q<loofah>.freeze, [">= 2.0"])
  end
end
