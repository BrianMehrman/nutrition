class CreateNutData < ActiveRecord::Migration
  def change
    create_table :nut_data do |t|
      t.string :NDB_No
      t.string :Nutr_No
      t.float :Nutr_Val
      t.float :Num_Data_Pts
      t.float :Std_Error
      t.string :Src_Cd
      t.string :Deriv_Cd
      t.string :Ref_NDB_No
      t.string :Add_Nutr_Mark
      t.integer :Num_Studies
      t.float :Min
      t.float :Max
      t.integer :DF
      t.float :Low_EB
      t.float :Up_EB
      t.string :Stat_cmt
      t.string :AddMod_Date
      t.string :CC

      t.timestamps
    end
  end
end
