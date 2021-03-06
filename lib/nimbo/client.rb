require 'rest_client'

module Nimbo
  class Client
    attr_accessor :service_url

    def initialize
      @service_url = 'http://nimbolab.com/test'
    end

    def send(suite)
      RestClient.post @service_url, :suite_archive => File.new(suite.archive, 'a+')
    end
  end
end
