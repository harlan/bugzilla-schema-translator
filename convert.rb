require 'ftools'
require 'yaml'
require 'erb'
require 'rubygems'
gem 'activerecord'
require 'activerecord'
require 'models_3_2/model32'
require 'models_2_14_2/model2142'

require 'models_2_14_2/bug'
require 'models_2_14_2/attachment'

# parse db config file
database_settings = YAML::load(ERB.new(IO.read("database.yml")).result)


# connect to the two databases
Model32.establish_connection(database_settings["bugzilla_3_2"])
Bugzilla2142::Model2142.establish_connection(database_settings["bugzilla_2_14_2"])

print "Truncating everything in the 3.2 database in preparation? (y/N) "
line = gets.strip.upcase
exit if line.empty? || line[0,1] != 'Y'


puts "We have this many bugs: #{Bugzilla2142::Bug.count}"
puts "We have this many bugs: #{Bugzilla2142::Attachment.count}"
