class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :adress
      t.string :business_hours
      t.string :GPS

      t.timestamps
    end
  end
end
