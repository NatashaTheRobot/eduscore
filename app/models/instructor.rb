class Instructor < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :title, :url
end
