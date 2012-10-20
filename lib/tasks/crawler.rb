module Crawler
  def self.get(url)
    response = Typhoeus::Request.get(url)
  end
  def self.get_json(url)
    response = self.get(url)
    JSON.parse(response.body)
  end
end