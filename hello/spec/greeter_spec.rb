class RSpecGreeter
  def greet
    "Hello RSpec!"
  end
end

describe "RSpecGreeter" do
  it "should say 'Hello RSpec!' when it recieves the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == 'Hello RSpec!'
  end
end
