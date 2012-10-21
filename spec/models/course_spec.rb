require 'spec_helper'

describe Course do
  it { has_many :lectures }
end
