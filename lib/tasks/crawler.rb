module Crawler
  def get_json_courses(url)
    response = Typhoeus::Request.get(url)
    JSON.parse(response.body)
  end
end