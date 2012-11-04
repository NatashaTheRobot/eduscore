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

require 'spec_helper'

describe Topic do
  it { should have_and_belong_to_many :courses }
  it { should have_and_belong_to_many :lectures }
  it { should validate_uniqueness_of :name }
end
