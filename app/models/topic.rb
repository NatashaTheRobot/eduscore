class Topic < ActiveRecord::Base
  attr_accessible :name, :type

  has_and_belongs_to_many :courses
  has_and_belongs_to_many :lectures
end
