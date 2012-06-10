class Nimbo::Client::Suite
  attr_accessor :tmp_dir
  attr_reader :suite_dir

  def initialize(suite_dir)
    @suite_dir = suite_dir
    @tmp_dir = ENV['TMPDIR']
  end

  def archive
    archive_path = File.join(@tmp_dir, "suite_#{object_id}.tar.gz")
    success = system("tar -cvf #{archive_path} #{@suite_dir}")
    archive_path if success
  end
end
