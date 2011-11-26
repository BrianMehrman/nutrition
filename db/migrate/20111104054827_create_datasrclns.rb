class CreateDatasrclns < ActiveRecord::Migration
  def change
    create_table :datasrclns do |t|
      t.string :NDB_No
      t.string :Nutr_No
      t.string :DataSrc_ID

      t.timestamps
    end
  end
end
