class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :title
      t.text :body
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
