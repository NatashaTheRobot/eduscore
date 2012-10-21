require 'spec_helper'

describe Topic do
  it { should have_and_belong_to_many :courses }
  it { should have_and_belong_to_many :lectures }
end
