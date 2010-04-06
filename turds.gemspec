# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{turds}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon Mellor", "Adam Holt"]
  s.date = %q{2010-04-06}
  s.default_executable = %q{turds}
  s.description = %q{turds}
  s.email = %q{sfusion@gmail.com}
  s.executables = ["turds"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/turds",
     "init.rb",
     "lib/turds.rb",
     "lib/turds/buoyancy.rb",
     "lib/turds/cli.rb",
     "lib/turds/nuggets.rb",
     "lib/turds/nuggets/flog.rb",
     "lib/turds/nuggets/rcov.rb",
     "lib/turds/nuggets/reek.rb",
     "lib/turds/stain.rb",
     "lib/turds/wit.rb",
     "pkg/turds-0.0.0.gem",
     "test/helper.rb",
     "test/test_turds.rb",
     "turds.gemspec"
  ]
  s.homepage = %q{http://github.com/simonmellor/turds}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{turds}
  s.test_files = [
    "test/helper.rb",
     "test/test_turds.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<color>, [">= 0"])
      s.add_runtime_dependency(%q<reek>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<color>, [">= 0"])
      s.add_dependency(%q<reek>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<color>, [">= 0"])
    s.add_dependency(%q<reek>, [">= 0"])
  end
end

