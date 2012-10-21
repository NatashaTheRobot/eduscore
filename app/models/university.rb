class University < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :url
end
