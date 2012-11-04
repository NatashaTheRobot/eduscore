# == Schema Information
#
# Table name: instructors
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  title       :string(255)
#  description :text
#  image_url   :string(255)
#  url         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

Fabricator(:instructor) do
  name        "MyString"
  title       "MyString"
  description "MyText"
  image_url   "MyString"
end
