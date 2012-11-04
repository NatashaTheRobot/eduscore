desc "Get new Coursera courses and save to our db"

task :get_coursera_courses => :environment do
  puts "Getting Coursera Courses"
  Coursera.parse_courses
  puts "Got all the new Coursera Courses successfully"
end