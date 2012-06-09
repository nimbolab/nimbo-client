require 'rest_client'

class Nimbo::Client
  attr_accessor :service_url

  def initialize
    @service_url = 'http://nimbolab.com/test'
  end

  def send(suite)
    RestClient.post @service_url, :suite_archive => suite.archive
  end
end

