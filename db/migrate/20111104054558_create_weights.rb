class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.string :NDB_No
      t.string :Seq
      t.float :Amount
      t.string :Msre_Desc
      t.float :Gm_Wgt
      t.integer :Num_Data_Pts
      t.float :Std_Dev

      t.timestamps
    end
  end
end
