desc "Get new Coursera courses and save to our db"

task :get_coursera_courses => :environment do
  puts "Getting Coursera Courses"
  Coursera.parse_courses
  puts "Got all the new Coursera Courses successfully"
end

task :get_coursera_course_details => :environment do
  puts "Getting coursera course details"
  CourseraCourseDetail.parse_course_details
  puts "Got the instructor description"
end