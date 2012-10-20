require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = Rails.root.join('spec','vcr')
  c.hook_into :typhoeus
  #c.ignore_localhost = true
  #c.configure_rspec_metadata!
  #c.default_cassette_options = { :record => :none }
end