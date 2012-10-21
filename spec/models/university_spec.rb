require 'spec_helper'

describe University do
  it { should have_and_belong_to_many :courses }
end
