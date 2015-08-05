class AddUsersToVerbiages < ActiveRecord::Migration
  def change
    add_column :verbiages, :user_id, :integer
    add_index :verbiages, :user_id
  end
end
