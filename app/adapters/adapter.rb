require 'rest-client'
require 'json'

module Adapter
  class WaitTimeWrapper
    def initialize(code: IATAcode)
      @key = "X-apiKey #{ENV['X-apiKey']}"
      @code = code
    end

    def url
      "https://waittime.api.aero/waittime/v1/current/#{@code}"
    end

    def call
      binding.pry
      response = RestClient.get(url, {:Authorization => @key})
      JSON.parse(response)
    end
  end
end
