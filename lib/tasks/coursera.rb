class Coursera < Crawler

  URL = 'https://www.coursera.org/maestro/api/topic/list?full=1'

  def self.parse_courses
    courses = Crawler.json_parse(URL)
    self.create_courses(courses)
  end

  def self.create_courses(courses)
    courses.each do |course|
      self.create_course(course) unless Course.find_by_title(course['name'])
    end
  end

  private
  def self.create_course(course)
    new_course = Course.new( provider:        'coursera',
                             cost:            0,
                             title:           course['name'],
                             url:             course['social_link'],
                             intro_video_url: "http://www.youtube.com/watch?v=#{course['video']}",
                             description:     course['short_description'],
                             image_url:       course['photo']
                           )

    instructors = course['instructor'].split('. ')
    new_course.instructors = self.instructor_list(instructors)

    new_course.topics = self.topic_list(course['categories'])

    new_course.universities = self.university_list(course['universities'])

    new_course.save

  end

  def self.instructor_list(instructors)
    instructors.collect do |instructor|
      details = instructor.split(', ')
      name = details[0]
      Instructor.find_by_name(name) || Instructor.new( name:  name, title: details[1])
    end
  end

  #if topic already exists, will it still be mapped correctly?
  def self.topic_list(categories)
    categories.collect do |topic|
      name = topic['name']
      Topic.find_by_name(name) || Topic.new(name: name, category: 'subject')
    end
  end

  def self.university_list(universities)
    universities.collect do |university|
      name = university['name']
      University.find_by_name(name) || University.new(name: name, description: university['description'])
    end
  end

end