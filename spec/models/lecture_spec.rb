# == Schema Information
#
# Table name: lectures
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  number     :integer
#  video_url  :string(255)
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Lecture do
  it { should belong_to :course}
  it { should have_many(:instructors).through(:course) }
  it { should have_and_belong_to_many :topics }
  it { should validate_uniqueness_of :url }
end
