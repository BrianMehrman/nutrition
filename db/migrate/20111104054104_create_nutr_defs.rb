class CreateNutrDefs < ActiveRecord::Migration
  def change
    create_table :nutr_defs do |t|
      t.string :Nutr_No
      t.string :Units
      t.string :Tagname
      t.string :NutrDesc
      t.string :Num_Dec
      t.integer :SR_Order

      t.timestamps
    end
  end
end
