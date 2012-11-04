class RenameTypeToCategoryInTopics < ActiveRecord::Migration
  def change
    rename_column :topics, :type, :category
  end
end
