# -*- encoding: utf-8 -*-
# stub: require_reloader 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "require_reloader".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Colin Young".freeze, "Huiming Teo".freeze]
  s.date = "2014-01-15"
  s.description = "Auto-reload require files or local gems without restarting server during Rails development.".freeze
  s.email = ["me@colinyoung.com".freeze, "teohuiming@gmail.com".freeze]
  s.homepage = "https://github.com/teohm/require_reloader".freeze
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "Auto-reload require files or local gems without restarting Rails server.".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    else
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
  end
end
