require_relative '../../test_helper'
 
describe Nimbo do
  it "must be defined" do
    Nimbo::VERSION.wont_be_nil
  end
end
