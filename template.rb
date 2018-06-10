gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

gem_group :development do
  gem 'letter_opener'
end

environment %Q! 
  config.generators do |g|
    g.test_framework(
      :rspec, 
      view_specs: false, 
      helper_specs: false, 
      controller_specs: false, 
      routing_specs: false, 
      request_specs: false
      )
  end
!

after_bundle do
  git :init
  git add: "."
  git commit: "-m 'initial commit!'"
  generate("rspec:install")
  git add: "."
  git commit: "-m 'Setup RSpec'"
end
