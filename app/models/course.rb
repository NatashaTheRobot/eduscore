class Course < ActiveRecord::Base
  attr_accessible :cost, :description, :image_url, :intro_video, :start_date, :title, :url, :provider

  has_many :lectures
end
