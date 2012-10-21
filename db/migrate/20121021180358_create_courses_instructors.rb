class CreateCoursesInstructors < ActiveRecord::Migration
  def change
    create_table :courses_instructors, :id => false do |t|
      t.references :course
      t.references :instructor
    end

    add_index :courses_instructors, [:course_id, :instructor_id], :unique => true
  end
end
