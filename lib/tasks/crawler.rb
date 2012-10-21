class Crawler

  def self.get_body(url)
    response = Typhoeus::Request.get(url)
    response.body
  end

  def self.json_parse(url)
    JSON.parse self.get_body(url)
  end
end