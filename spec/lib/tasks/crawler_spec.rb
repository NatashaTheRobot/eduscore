describe "Crawler" do
  include Crawler

  describe '#get_json_courses' do
    it "gets the courses in the json format from a url" do
      VCR.use_cassette 'crawler/coursera' do
        response = get_json_courses('https://www.coursera.org/maestro/api/topic/list')
        response.first['photo'].should == 'https://s3.amazonaws.com/coursera/topics/ml/large-icon.png'
        response.first['video'].should == 'e0WKJLovaZg'
      end
    end
  end
end