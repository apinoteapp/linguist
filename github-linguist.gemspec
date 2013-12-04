Gem::Specification.new do |s|
  s.name    = 'github-linguist'
  s.version = '2.9.8'
  s.summary = "GitHub Language detection"

  s.authors  = "GitHub"
  s.homepage = "https://github.com/github/linguist"

  s.files = Dir['lib/**/*']
  s.executables << 'linguist'
  
  if RUBY_PLATFORM =~ /java/
     s.add_dependency 'charlock_holmes-jruby', '>= 0.1.2'
     s.add_dependency 'pygments.rb-jruby',     '>= 0.5.2'
  else
     s.add_dependency 'charlock_holmes', '~> 0.6.6'
     s.add_dependency 'pygments.rb',     '~> 0.5.2'
  end
  
  s.add_dependency 'mime-types',      '~> 1.19'
  
  
  s.add_development_dependency 'json'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'yajl-ruby'
end
