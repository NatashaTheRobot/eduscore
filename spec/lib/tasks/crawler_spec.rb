require 'spec_helper'
require 'vcr'

describe "Crawler" do
  include Crawler

  describe '#get_json' do
    it "calls arbitrary json api and returns result" do
      VCR.use_cassette 'crawler' do
        courses = Crawler.get_json('https://www.coursera.org/maestro/api/topic/list')
        courses.first['photo'].should == 'https://s3.amazonaws.com/coursera/topics/ml/large-icon.png'
        courses.first['video'].should == 'e0WKJLovaZg'
      end
    end
  end
end