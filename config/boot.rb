require 'rubygems'

# Set up gems listed in the Gemfile.
gemfile = File.expand_path('../../Gemfile', __FILE__)
#asta e pus de mine din tutorial
#ENV['BUNDLE_GEMFILE'] ||= File.Expand_path('../../Gemfile', __FILE__)
#require 'bundler/setup' if File.exists? (ENV['BUNDLE_GEMFILE'])
#mai bine adaptez
begin
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler/setup'
  #Bundler.setup
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts "Try running `bundle install`."
  exit!
end if File.exist?(gemfile)
