require_relative '../../spec_helper'

describe 'Nimbo::Client::Suite' do
  it "is defined" do
    Nimbo::Client::Suite.should_not be_nil
  end

  describe "#archive" do
    before :each do
      @suite = Nimbo::Client::Suite.new "/home/user/suite"
      @suite.tmp_dir = '/tmp/dir'
      @suite.stub(:system).and_return(true)
      @archive_path = File.join(@suite.tmp_dir, "suite_#{@suite.object_id}.tar.gz")
    end

    it "calls system gzipping command" do
      @suite.should_receive(:system).with("tar -cf #{@archive_path} #{@suite.suite_dir}")
      @suite.archive
    end

    it "returns archive file path" do
      @suite.archive.should == @archive_path
    end
  end
end

