class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :image_url
      t.string :url
      t.string :intro_video_url
      t.text :description
      t.decimal :cost
      t.datetime :start_date
      t.string :provider

      t.timestamps
    end
  end
end
