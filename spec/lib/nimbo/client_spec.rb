require_relative '../../spec_helper'

describe 'Nimbo::Client' do
  before :each do
    @client = Nimbo::Client.new
  end

  it "is defined" do
    Nimbo::Client.should_not be_nil
  end

  describe "service_url" do
    it "is defined" do
      @client.service_url.should_not be_nil
    end
  end
  
  describe '#send' do
    it 'returns nimbo service response' do
      response = "result data"
      RestClient.stub(:post).and_return response
      File.stub(:new)
      suite = double('suite', archive: "archive file data")
      @client.send(suite).should == response
    end
  end  
end
