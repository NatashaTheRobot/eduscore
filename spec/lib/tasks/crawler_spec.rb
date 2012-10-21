require 'vcr'

describe Crawler do

  describe '.json_parse' do
    it "calls arbitrary json api and returns result" do
      VCR.use_cassette 'crawler/response_body' do
        courses = Crawler.json_parse('https://www.coursera.org/maestro/api/topic/list')
        courses.first['photo'].should == 'https://s3.amazonaws.com/coursera/topics/ml/large-icon.png'
        courses.first['video'].should == 'e0WKJLovaZg'
      end
    end
  end
end