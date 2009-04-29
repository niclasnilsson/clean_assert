require 'clean-assert'

def method_with_valid_assert
  assert / "2 == 2"
end

def method_with_broken_assert
  assert / "1 == 2"
end

def method_with_argument value
  assert / "value == 2"
end

# Test valid assertions outside of classes and outside of rspec
method_with_valid_assert
method_with_argument 2

# Test broken assertions outside of classes and outside of rspec

begin
  method_with_broken_assert
rescue RuntimeError => e
  raise if not e.message =~ /Assertion '1 == 2' not satisfied in main#method_with_broken_assert/
end

begin
  method_with_argument 3
rescue RuntimeError => e
  raise if not e.message =~ /Assertion 'value == 2' not satisfied in main#method_with_argument/
end

