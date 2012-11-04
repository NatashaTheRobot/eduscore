# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  image_url       :string(255)
#  url             :string(255)
#  intro_video_url :string(255)
#  description     :text
#  cost            :decimal(, )
#  start_date      :datetime
#  provider        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

Fabricator(:course) do
  title       "MyString"
  image_url   "MyString"
  url         "MyString"
  intro_video ""
  description "MyText"
  cost        "9.99"
  start_date  "2012-10-21 10:13:13"
end
