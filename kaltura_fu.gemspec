# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{goncalossilva-kaltura_fu}
  s.version = "0.2.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Robertson"]
  s.date = %q{2010-11-06}
  s.email = %q{patrick.robertson@velir.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "generators/kaltura_fu_install/kaltura_fu_install_generator.rb",
     "generators/kaltura_fu_install/templates/kaltura.yml",
     "generators/kaltura_fu_install/templates/kaltura_upload.js",
     "install.rb",
     "kaltura_fu.gemspec",
     "lib/kaltura_fu.rb",
     "lib/kaltura_fu/configuration.rb",
     "lib/kaltura_fu/entry.rb",
     "lib/kaltura_fu/entry/class_methods.rb",
     "lib/kaltura_fu/entry/flavor.rb",
     "lib/kaltura_fu/entry/instance_methods.rb",
     "lib/kaltura_fu/entry/metadata.rb",
     "lib/kaltura_fu/entry/metadata/class_and_instance_methods.rb",
     "lib/kaltura_fu/entry/metadata/class_methods.rb",
     "lib/kaltura_fu/railtie.rb",
     "lib/kaltura_fu/view_helpers.rb",
     "rails/init.rb",
     "spec/debug.log",
     "spec/entry_spec.rb",
     "spec/flavor_spec.rb",
     "spec/kaltura_fu_spec.rb",
     "spec/metadata_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/goncalossilva/kaltura_fu}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Rails gem for making Kaltura integrations easier.}
  s.test_files = [
    "spec/entry_spec.rb",
     "spec/flavor_spec.rb",
     "spec/kaltura_fu_spec.rb",
     "spec/metadata_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_development_dependency(%q<activesupport>, ["~> 2.3.5"])      
      s.add_development_dependency(%q<goncalossilva_kaltura-ruby>, ["~> 0.4.9"])  
    else
      s.add_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_dependency(%q<goncalossilva_kaltura-ruby>, ["~> 0.4.9"])
    end
  else
    s.add_dependency(%q<rspec>, ["= 1.3.0"])
    s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
    s.add_dependency(%q<goncalossilva_kaltura-ruby>, ["~> 0.4.9"])
  end
end

