# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  category   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Topic < ActiveRecord::Base
  attr_accessible :name, :category

  has_and_belongs_to_many :courses
  has_and_belongs_to_many :lectures

  validates_uniqueness_of :name
end
