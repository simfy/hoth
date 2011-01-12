# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hoth}
  s.version = "0.3.2.beta3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirk Breuer"]
  s.date = %q{2011-01-12}
  s.description = %q{Creating a SOA requires a centralized location to define all services within the
SOA. Furthermore you want to know where to deploy those services.
}
  s.email = %q{dirk.breuer@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc",
     "TODO"
  ]
  s.files = [
    "Gemfile.lock",
     "README.rdoc",
     "THANKS.md",
     "lib/hoth.rb",
     "lib/hoth/encoding/json.rb",
     "lib/hoth/encoding/no_op.rb",
     "lib/hoth/endpoint.rb",
     "lib/hoth/exceptions.rb",
     "lib/hoth/extension/core/exception.rb",
     "lib/hoth/modules.rb",
     "lib/hoth/providers/beanstalkd_provider.rb",
     "lib/hoth/providers/bertrpc_provider.rb",
     "lib/hoth/providers/rack_provider.rb",
     "lib/hoth/service.rb",
     "lib/hoth/service_definition.rb",
     "lib/hoth/service_module.rb",
     "lib/hoth/service_registry.rb",
     "lib/hoth/services.rb",
     "lib/hoth/transport.rb",
     "lib/hoth/transport/base.rb",
     "lib/hoth/transport/beanstalkd.rb",
     "lib/hoth/transport/bert.rb",
     "lib/hoth/transport/http.rb",
     "lib/hoth/transport/https.rb",
     "lib/hoth/transport/workling.rb",
     "lib/hoth/util/logger.rb",
     "spec/spec_helper.rb",
     "spec/unit/encoding/json_spec.rb",
     "spec/unit/endpoint_spec.rb",
     "spec/unit/extension/core/exception_spec.rb",
     "spec/unit/hoth_spec.rb",
     "spec/unit/providers/rack_provider_spec.rb",
     "spec/unit/service_definition_spec.rb",
     "spec/unit/service_module_spec.rb",
     "spec/unit/service_spec.rb",
     "spec/unit/transport/base_spec.rb",
     "spec/unit/transport/http_spec.rb",
     "spec/unit/transport/workling_spec.rb",
     "spec/unit/transport_spec.rb"
  ]
  s.homepage = %q{http://github.com/galaxycats/hoth}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{Registry and deployment description abstraction for SOA-Services}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/unit/encoding/json_spec.rb",
     "spec/unit/endpoint_spec.rb",
     "spec/unit/extension/core/exception_spec.rb",
     "spec/unit/hoth_spec.rb",
     "spec/unit/providers/rack_provider_spec.rb",
     "spec/unit/service_definition_spec.rb",
     "spec/unit/service_module_spec.rb",
     "spec/unit/service_spec.rb",
     "spec/unit/transport/base_spec.rb",
     "spec/unit/transport/http_spec.rb",
     "spec/unit/transport/workling_spec.rb",
     "spec/unit/transport_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<bertrpc>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simple_publisher>, [">= 0"])
      s.add_development_dependency(%q<beanstalk-client>, [">= 0"])
      s.add_development_dependency(%q<em-jack>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<bertrpc>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simple_publisher>, [">= 0"])
      s.add_dependency(%q<beanstalk-client>, [">= 0"])
      s.add_dependency(%q<em-jack>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<bertrpc>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simple_publisher>, [">= 0"])
    s.add_dependency(%q<beanstalk-client>, [">= 0"])
    s.add_dependency(%q<em-jack>, [">= 0"])
  end
end

