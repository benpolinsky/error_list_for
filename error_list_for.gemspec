# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'error_list_for/version'

Gem::Specification.new do |spec|
  spec.name          = "error_list_for"
  spec.version       = ErrorListFor::VERSION
  spec.authors       = ["Ben Polinsky"]
  spec.email         = ["benjamin.polinsky@gmail.com"]

  spec.summary       = %q{Helper method for display active-record errors as a string.}

  spec.description   = %q{Quick list of errors for displaying in one place.  Sometimes you'd                             like to return errors at the top of the screen in a notice rather                              than around a form, for example if you have a particularly long                                form.  Just a quick helper method to help with said cases.}
  
  spec.homepage      = "https://github.com/benpolinsky/error_list_for"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activemodel"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
