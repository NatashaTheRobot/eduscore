class Lecture < ActiveRecord::Base
  attr_accessible :number, :title, :video_url, :course, :instructors

  belongs_to :course
  has_many :instructors, through: :course
end