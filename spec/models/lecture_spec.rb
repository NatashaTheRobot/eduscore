require 'spec_helper'

describe Lecture do
  it { should belong_to :course}
  it { should have_many(:instructors).through(:course) }
end
