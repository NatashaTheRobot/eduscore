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

require 'spec_helper'

describe Instructor do
  it { should have_and_belong_to_many :courses }
  it { should validate_uniqueness_of :name}
end
