lib_dir = File.expand_path(File.dirname(__FILE__) + '/lib')
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

require 'jshint/utils'
require 'jshint/rails'

puts "\n"

begin
  JSHint::Utils.remove_config_file
rescue StandardError => error
  puts "Error: #{error.message}"
end

puts "JSHint on Rails plugin has been removed."
