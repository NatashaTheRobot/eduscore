class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :url
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
