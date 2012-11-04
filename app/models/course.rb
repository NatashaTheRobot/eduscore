# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  image_url       :string(255)
#  url             :string(255)
#  intro_video_url :string(255)
#  description     :text
#  cost            :decimal(, )
#  start_date      :datetime
#  provider        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :cost, :description, :image_url, :intro_video_url, :start_date, :title, :url, :provider

  has_many :lectures
  has_and_belongs_to_many :instructors
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :universities

  validates_uniqueness_of :url
end
