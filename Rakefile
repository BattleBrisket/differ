
desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r differ.rb"
end
task :c => :console

namespace :gem do
  desc "Connect to RubyGems.org account"
  task :auth do
    sh "curl -u battlebrisket https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials"
  end

  desc "Build the gem according to gemspec"
  task :build do
    sh "gem build differ.gemspec"
  end

  require "./lib/differ/version"
  desc "Push the gem to RubyGems.org"
  task :push do
    sh "gem push differ-#{Differ::VERSION}.gem"
  end
end

task :publish do
  Rake::Task["gem:build"].invoke
  Rake::Task["gem:push"].invoke
end