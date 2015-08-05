class AddCategoryToVerbiages < ActiveRecord::Migration
  def change
    add_column :verbiages, :category_id, :integer
    add_index :verbiages, :category_id
  end
end
