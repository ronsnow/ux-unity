require "uxunity/version"
require "compass"

base_directory = File.join(File.dirname(__FILE__))
Compass::Frameworks.register('uxunity', :path => base_directory)

module Uxunity
  # Your code goes here...
end
