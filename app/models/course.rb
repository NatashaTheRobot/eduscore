class Course < ActiveRecord::Base
  attr_accessible :cost, :description, :image_url, :intro_video, :start_date, :title, :url, :provider

  has_many :lectures
  has_and_belongs_to_many :instructors
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :universities
end
