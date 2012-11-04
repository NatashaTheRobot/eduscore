# == Schema Information
#
# Table name: lectures
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  number     :integer
#  video_url  :string(255)
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

Fabricator(:lecture) do
  title      "MyString"
  number     1
  references ""
end
