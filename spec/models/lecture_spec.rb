require 'spec_helper'

describe Lecture do
  it { should belong_to :course}
  it { should have_many(:instructors).through(:course) }
  it { should have_and_belong_to_many :topics }
end
