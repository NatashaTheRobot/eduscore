class CreateCoursesUniversities < ActiveRecord::Migration
  def change
    create_table :courses_universities, :id => false do |t|
      t.references :course
      t.references :university
    end

    add_index :courses_universities, [:course_id, :university_id], :unique => true
  end
end
