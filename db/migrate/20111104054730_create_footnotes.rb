class CreateFootnotes < ActiveRecord::Migration
  def change
    create_table :footnotes do |t|
      t.string :NDB_No
      t.string :Footnt_No
      t.string :Footnt_Typ
      t.string :Nutr_No
      t.string :Footnt_Txt

      t.timestamps
    end
  end
end
