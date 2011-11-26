class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :nutrient
      t.integer :goal

      t.timestamps
    end
  end
end
