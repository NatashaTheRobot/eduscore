describe Coursera do

  describe '.create_courses' do
    before do
      VCR.use_cassette 'crawler/response_body' do
        courses = Crawler.json_parse('https://www.coursera.org/maestro/api/topic/list')
        Coursera.create_courses(courses)
      end
    end

    it "creates new courses" do
      Course.first.title.should eq 'Machine Learning'
      Course.last.universities.first.name.should eq 'Stanford University'
    end

    it "creates new course topics" do
      Topic.last.name.should eq 'Education'
      Topic.first.courses[2].title.should eq 'Data Analysis'
    end

    it "creates new course universities" do
      University.first.name.should eq 'Stanford University'
      University.first.courses.count.should eq 18
    end

    it "create new course instructors" do
      Instructor.first.title.should eq 'Associate Professor'
      Instructor.first.courses.first.title.should eq 'Machine Learning'
    end
  end

end