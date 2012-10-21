require 'spec_helper'

describe Course do
  it { should have_many :lectures }
  it { should have_and_belong_to_many :instructors }
  it { should have_and_belong_to_many :topics }
  it { should have_and_belong_to_many :universities }
end
