class CreateVerbiages < ActiveRecord::Migration
  def change
    create_table :verbiages do |t|
      t.string :title
      t.text :body
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
