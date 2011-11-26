class CreateFoodDes < ActiveRecord::Migration
  def change
    create_table :food_des do |t|
      t.string :NDB_No
      t.string :FdGrp_Cd
      t.string :Long_Desc
      t.string :Shrt_Desc
      t.string :ComName
      t.string :ManufacName
      t.string :Survey
      t.string :Ref_desc
      t.integer :Refuse
      t.string :SciName
      t.float :N_Factor
      t.float :Pro_Factor
      t.float :Fat_Factor
      t.float :CHO_Factor

      t.timestamps
    end
  end
end
