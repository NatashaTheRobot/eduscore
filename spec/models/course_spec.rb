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

require 'spec_helper'

describe Course do
  it { should have_many :lectures }
  it { should have_and_belong_to_many :instructors }
  it { should have_and_belong_to_many :topics }
  it { should have_and_belong_to_many :universities }
  it { should validate_uniqueness_of :url }
end
