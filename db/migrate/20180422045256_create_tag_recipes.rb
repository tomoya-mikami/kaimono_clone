class CreateTagRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_recipes do |t|
      t.integer :recipe_id
      t.integer :tag_id
      t.integer :require

      t.timestamps
    end
  end
end
