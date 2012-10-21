class University < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :url

  has_and_belongs_to_many :courses
end
