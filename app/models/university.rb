# == Schema Information
#
# Table name: universities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  url         :string(255)
#  image_url   :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class University < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :url

  has_and_belongs_to_many :courses

  validates_uniqueness_of :name
end
