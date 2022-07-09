class CreateMotorcycles < ActiveRecord::Migration[7.0]
  def change
    create_table :motorcycles do |t|
      t.string :model
      t.string :description
      t.float :price
      t.string :image
      t.integer :duration
      t.integer :discount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end