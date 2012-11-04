describe CourseraCourseDetail do

  before do
    @course = Fabricate :course
    @instructor = Fabricate :instructor
    @course.instructors = [@instructor]
    @course.save
  end

  describe '.parse_course_details' do
    before do
      VCR.use_cassette 'crawler/coursera/details' do
        CourseraCourseDetail.parse_course_details
      end
    end

    it "saves the instructors description" do
      Instructor.first.description.should match /Director of the Stanford Artificial Intelligence Lab, the main AI research/
    end
  end


end