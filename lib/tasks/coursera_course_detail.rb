class CourseraCourseDetail < Crawler
  URL = "https://www.coursera.org/maestro/api/topic/information?topic-id="

  def self.parse_course_details
    courses = Course.where(provider: 'coursera')
    courses.each do |course|
      if course.url != "" and course.url != nil
        course_info = self.get_course_info(course)
        self.save_instructor(course_info)
      end
    end
  end

  private

  def self.get_course_info(course)
    topic_id = course.url.split('/').last
    Crawler.json_parse(URL + topic_id)
  end

  def self.save_instructor(course_info)
    instructor = Instructor.find_by_name(course_info['instructor'])
    if instructor and instructor.description.nil?
      instructor.description = course_info["about_the_instructor"]
      instructor.save
    end

  end


end