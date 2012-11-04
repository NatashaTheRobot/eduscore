# == Schema Information
#
# Table name: universities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  url         :string(255)
#  image_url   :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

Fabricator(:university) do
  name        "MyString"
  url         "MyString"
  image_url   "MyString"
  description "MyText"
end
