class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :image_url
      t.string :url

      t.timestamps
    end
  end
end
