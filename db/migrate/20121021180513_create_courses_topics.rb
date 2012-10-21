class CreateCoursesTopics < ActiveRecord::Migration
  def change
    create_table :courses_topics, :id => false do |t|
      t.references :course
      t.references :topic
    end

    add_index :courses_topics, [:course_id, :topic_id], :unique => true
  end
end
