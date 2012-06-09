require 'zip/zip'

class Nimbo::Client::Suite
  attr_accessor :tmp_dir

  def initialize(suite_dir)
    @suite_dir = suite_dir
    @tmp_dir = ENV['TMPDIR']
  end

  def archive
    `tar -cvf #{archive_path} #{@suite_dir}`
    File.new(archive_path, 'a+')
  end

  def archive_path
    File.join @tmp_dir, "suite_#{object_id}.tar.gz"
  end
end
