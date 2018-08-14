# -*- encoding: utf-8 -*-
# stub: rails_admin_globalize_field 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_admin_globalize_field".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Volozhanin".freeze]
  s.date = "2015-11-12"
  s.description = "Adds tabbed interface and custom field type for globalize translations to Rails_admin".freeze
  s.email = ["scarfacedeb@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "Tabbed interface and custom field type for globalize translations for Rails_admin".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2"])
      s.add_runtime_dependency(%q<rails_admin>.freeze, [">= 0.6.2"])
      s.add_runtime_dependency(%q<globalize>.freeze, [">= 5.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<poltergeist>.freeze, ["~> 1.5"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.2"])
      s.add_dependency(%q<rails_admin>.freeze, [">= 0.6.2"])
      s.add_dependency(%q<globalize>.freeze, [">= 5.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.4"])
      s.add_dependency(%q<poltergeist>.freeze, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.2"])
    s.add_dependency(%q<rails_admin>.freeze, [">= 0.6.2"])
    s.add_dependency(%q<globalize>.freeze, [">= 5.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.4"])
    s.add_dependency(%q<poltergeist>.freeze, ["~> 1.5"])
  end
end
