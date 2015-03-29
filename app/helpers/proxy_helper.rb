require 'open-uri'
require 'stringio'
require 'net/http'
require 'uri'
require 'json'
require 'hashie'

module ProxyHelper
  def gethotlink(domain, songid)
    if domain == "baidu"
      url = URI.parse("http://play.baidu.com/data/cloud/songlink")
      http = Net::HTTP.new(url.host, url.port)
      req = Net::HTTP::Post.new(url.path) # init a request with the url
      req["User-Agent"] = "Chrome"
      req.set_form_data({'songIds' => songid})
      res = http.request(req) # load the mp3 file
      obj = Hashie::Mash.new JSON.parse res.body
      redirect_to obj.data.songList[0].songLink
    else
      render :status => 404
    end
  end
end
