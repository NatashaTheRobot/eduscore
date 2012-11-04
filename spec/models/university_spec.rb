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

require 'spec_helper'

describe University do
  it { should have_and_belong_to_many :courses }
  it { should validate_uniqueness_of :name }
end
