require 'lib/clean_assert'

describe "clean assert" do

  before do
    @my_member = "my member"
  end
  
  it "should provide clean assertion syntax" do
    name = "Niclas Nilsson"
    assert / "name != nil"
  end

  it "should support chained assertions to keep code terse" do
    name = "Niclas Nilsson"
    age = 38
    assert / "name != nil" / "not name.empty?" / "age >= 21"
  end

  def foo
    begin
      assert / "1 == 2"
    rescue
      
    end
  end

  it "should work for regular methods" do
    foo
  end

end

