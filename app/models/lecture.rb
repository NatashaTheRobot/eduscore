# == Schema Information
#
# Table name: lectures
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  number     :integer
#  video_url  :string(255)
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lecture < ActiveRecord::Base
  attr_accessible :number, :title, :video_url, :course, :instructors, :url

  belongs_to :course
  has_many :instructors, through: :course
  has_and_belongs_to_many :topics

  validates_uniqueness_of :url
end
