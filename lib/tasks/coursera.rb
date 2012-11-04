class Coursera < Crawler

  URL = 'https://www.coursera.org/maestro/api/topic/list?full=1'

  def self.parse_courses
    course_info = Crawler.json_parse(URL)
    course_info.each do |course|
      self.save_course(course) #if this is a new course
    end
  end

  def self.save_course(course)
    #check if this course already exists
    # if the course does not exist, but is not saved, send email
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

    new_course.save

      # save topic
      # save university
      # save

  end

  private
  def self.instructor_list(instructors)
    instructors.collect do |instructor|
      details = instructor.split(', ')
      Instructor.new( name:  details[0],
                      title: details[1]
      )
    end
  end


  #if topic already exists, will it still be mapped correctly?
  def self.topic_list(categories)
    topics = []
    categories.each do |category|
      new_topics = category['name'].split(': ').join(', ').split(', ')
      new_topics.each do |topic|
        new_topic = Topic.new(name: topic.gsub('and ', ''))
        #if topic == new_topics.first
        #  p "#{topic} = #{new_topics.first}"
        #  new_topic.category = 'subject'
        #else
        #  p "#{topic} != #{new_topics.first}"
        #  new_topic.category = 'tag'
        #end
        topic == new_topics.first ?  new_topic.category = 'subject' : new_topic.category = 'tag'
        topics << new_topic
      end
    end
    p topics
    topics
  end

end