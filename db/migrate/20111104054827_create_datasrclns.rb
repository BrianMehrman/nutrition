class CreateDatasrclns < ActiveRecord::Migration
  def change
    create_table :datasrclns, :primary_key => :NDB_No do |t|
      t.string :NDB_No
      t.string :Nutr_No
      t.string :DataSrc_ID

      t.timestamps
    end
  end
end
