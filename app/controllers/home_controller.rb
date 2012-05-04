require 'net/http'
class HomeController < ApplicationController
  def index
    url = URI.parse('http://localhost:3010/vehicles.json?id=1')
    # req = Net::HTTP::Get.new(url.path)
    req = Net::HTTP::Get.new("http://localhost:3002/vehicles.json?id=1")
    res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
    }
    parsed_json = ActiveSupport::JSON.decode(res.body)
    raise parsed_json.inspect
  end
end
