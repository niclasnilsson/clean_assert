require "rubygems"
require 'test/unit'
require "spec"

$LOAD_PATH << File.expand_path(File.join('..', 'lib'), File.dirname(__FILE__))

require 'clean-assert'

class Binary
  @@binary_states = 2
  
  def self.binary_states= value
    @@binary_states = value
  end
  
  def self.check_binary_states
    assert / "@@binary_states == 2"
  end
end

class Person
  attr_accessor :age
  def check_invariant
    assert / "@age >= 0"
  end
end

describe "clean asserts" do

  before do
    @my_member = "my member"
  end
  
  describe "that are satisfied" do
    it "should provide clean assertion syntax" do
      name = "Niclas Nilsson"
      assert / "name != nil"
    end

    it "should support chained assertions to keep code terse" do
      name = "Niclas Nilsson"
      age = 38
      assert / "name != nil" / "not name.empty?" / "age >= 21"
    end

    it "should work for instance variables" do
      niclas = Person.new
      niclas.age = 38
      niclas.check_invariant
    end 

    it "should work for class variables" do
      Binary.binary_states = 2
      Binary.check_binary_states
    end
    
    it "should work for regular methods" do
      load "spec/regular_methods.rb"
    end
  end
  
  describe "that are not satisfied" do
    it "should work for instance variables" do
      niclas = Person.new
      niclas.age = -1
      lambda { niclas.check_invariant }.should raise_error(RuntimeError, /Assertion '@age >= 0' not satisfied/)
    end 

    it "should work for class variables" do
      Binary.binary_states = 3
      lambda { Binary.check_binary_states }.should raise_error(RuntimeError, /Assertion '@@binary_states == 2' not satisfied in Binary#check_binary_states/)
    end
  end
end

