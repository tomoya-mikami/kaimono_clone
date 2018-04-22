class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :tag_id
      t.integer :shop_id
      t.string :name
      t.integer :stock
      t.integer :price

      t.timestamps
    end
  end
end
