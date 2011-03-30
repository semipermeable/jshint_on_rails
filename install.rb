lib_dir = File.expand_path(File.dirname(__FILE__) + '/lib')
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

require 'jshint/utils'
require 'jshint/rails'

puts "\n"

begin
  JSHint::Utils.copy_config_file
rescue StandardError => error
  puts "Error: #{error.message}"
end

puts "\n"
puts "JSHint on Rails plugin is now installed. Take a look at the config file (config/jshint.yml) " +
     "and use 'rake jshint' to start the test.\nHappy JavaScript testing! :)"
