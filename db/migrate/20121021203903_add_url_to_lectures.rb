class AddUrlToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :url, :string
  end
end
