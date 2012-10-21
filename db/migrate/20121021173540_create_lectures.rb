class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.integer :number
      t.string :video_url
      t.references :course

      t.timestamps
    end
  end
end
