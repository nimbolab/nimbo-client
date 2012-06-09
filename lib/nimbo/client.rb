require 'rest_client'

module Nimbo
	class Client

	  def initialize(service_url, tmp_dir)
	  	@service_url = service_url
	  	@tmp_dir = tmp_dir
	  end

		def archive(suite_dir)
			suite_archive =  File.join @tmp_dir, 'suite.tar.gz'
			`tar -cvf #{suite_archive} #{suite_dir}`
			suite_archive
		end

		def request(suite_archive)
			RestClient.post @service_url, :suite_archive => suite_archive
		end
	
	end
end