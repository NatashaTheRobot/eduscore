# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  image_url       :string(255)
#  url             :string(255)
#  intro_video_url :string(255)
#  description     :text
#  cost            :decimal(, )
#  start_date      :datetime
#  provider        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

Fabricator(:course) do
  title           "Machine Learning"
  image_url       "https://s3.amazonaws.com/coursera/topics/ml/large-icon.png"
  url             "https://www.coursera.org/course/ml"
  intro_video_url "http://www.youtube.com/watch?v=e0WKJLovaZg"
  description     "Learn about the most effective machine learning techniques, and gain practice implementing them and getting them to work for yourself."
  cost            0
  start_date      nil
  provider        'coursera'
end
