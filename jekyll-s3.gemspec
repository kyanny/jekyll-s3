# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "jekyll-s3"
  s.version     = "2.2.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Philippe Creux", "Lauri Lehmijoki"]
  s.email       = ["pcreux@gmail.com", "lauri.lehmijoki@iki.fi"]
  s.homepage    = "https://github.com/laurilehmijoki/jekyll-s3"
  s.summary     = %q{Push your Jekyll blog to S3}
  s.description = %q{This Gem allows you to push your Jekyll blog to AWS S3.
In addition, you can use this Gem to invalidate the related Cloudfront
distribution, making it easy to deliver your blog via the CDN.}

  s.default_executable = %q{jekyll-s3}

  s.add_dependency 'aws-sdk', '~> 1.8.0'
  s.add_dependency 'filey-diff', '~> 0.0.2'
  s.add_dependency 'simple-cloudfront-invalidator', '~> 1.0.0'
  s.add_dependency 'erubis', '~> 2.7.0'
  s.add_dependency 'mime-types', '= 1.19'
  s.add_dependency 'configure-s3-website', '~> 1.0.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-expectations'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'aruba', '>= 0.4.7'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
