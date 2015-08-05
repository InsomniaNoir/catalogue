class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.references :verbiage, index: true, foreign_key: true
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
