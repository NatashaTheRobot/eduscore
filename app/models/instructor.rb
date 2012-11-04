# == Schema Information
#
# Table name: instructors
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  title       :string(255)
#  description :text
#  image_url   :string(255)
#  url         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Instructor < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :title, :url

  has_and_belongs_to_many :courses

  validates_uniqueness_of :name
end
