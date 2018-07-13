lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_api_auth'
  s.version     = '3.1.0'
  s.summary     = "Spree's Authentication API"
  s.description = "Spree's Authentication API"
  s.required_ruby_version = '>= 2.5.0'

  s.author    = 'Elizabeth Kendall'
  s.email     = 'dryeena3@gmail.com'
  s.homepage  = "https://github.com/dryeena/#{s.name}"

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0'
  s.add_dependency 'spree_api', '~> 3.6'
  s.add_dependency 'spree_auth_devise', '~> 3.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'listen'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'coffee-rails'
end
