class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.string :food_id
      t.integer :meal_id
      t.integer :measurement
      t.integer :unit_id

      t.timestamps
    end
  end
end
