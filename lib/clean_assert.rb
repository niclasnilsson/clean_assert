require 'facets/binding/caller'

module Kernel
  alias_method :assert, :binding
end

class Binding
  
  def / expression
    if not eval expression
      the_caller = /\`([^\']+)\'/.match(caller(0).first)
      m = "unknown"
      m = the_caller ? the_caller[1] : m
      raise "Assertion '#{expression}' not satisfied in #{self.self()}##{m}"
    end
    self
  end
  
end
