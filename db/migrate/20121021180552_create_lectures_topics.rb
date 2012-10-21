class CreateLecturesTopics < ActiveRecord::Migration
  def change
    create_table :lectures_topics, :id => false do |t|
      t.references :lecture
      t.references :topic
    end

    add_index :lectures_topics, [:lecture_id, :topic_id], :unique => true
  end
end
