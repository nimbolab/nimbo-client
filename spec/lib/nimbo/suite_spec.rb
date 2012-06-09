require_relative '../../spec_helper'

describe 'Nimbo::Client::Suite' do
  it "is defined" do
    Nimbo::Client::Suite.should_not be_nil
  end

  describe "#archive" do
    before :each do
      @suite = Nimbo::Client::Suite.new "/home/user/suite"
      @suite.stub(:`).and_return('archive file created')
      @archive_path = File.join(@suite.tmp_dir, "suite_#{@suite.object_id}.tar.gz")
    end

    it "creates archive file in tmp dir" do
      @suite.archive.path.should == @archive_path 
    end

    it "returns archive file" do
      File.file?(@suite.archive).should be_true
    end
  end

  describe "#archive_path" do
    it "returns archive file path" do
      suite = Nimbo::Client::Suite.new "home/user/suite"
      suite.tmp_dir = '/tmp/dir'
      suite.archive_path.should == File.join("/tmp/dir", "suite_#{suite.object_id}.tar.gz")
    end
  end
end

