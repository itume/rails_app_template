gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

gem_group :development do
  gem 'letter_opener'
end

after_bundle do
  git :init
  git add: "."
  git commit: "-m 'initial commit!'"
  generate("rspec:install")
  git add: "."
  git commit: "-m 'Setup RSpec'"
end
