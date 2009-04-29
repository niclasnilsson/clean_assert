$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'clean-assert/clean-assert'

module CleanAssert
  VERSION = '0.6.2'
end