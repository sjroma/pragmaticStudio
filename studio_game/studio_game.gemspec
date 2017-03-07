Gem::Specification.new do |s|
  s.name         = "studio_game_roma"
  s.version      = "1.0.0"
  s.author       = "S. Roma"
  s.email        = "roma.steve@gmail.com"
  s.homepage     = "http://pragmaticstudio.com"
  s.summary      = "Text based game created taking the Ruby course from Pragmatic Studio"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end