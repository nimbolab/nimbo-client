require 'rest_client'

module Nimbo
	class Client

	  def initialize(service_url)
	  	@service_url = service_url
	  end

		def archive(suite_dir)
			suite_archive = 'suite.tar.gz'
			out = `tar -cvf #{suite_archive} #{suite_dir}`
			File.join(suite_dir, suite_archive)
		end

		def request(suite_archive)
			RestClient.post @service_url, :suite_archive => suite_archive
		end
	
	end
end