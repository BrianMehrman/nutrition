class CreateLanguals < ActiveRecord::Migration
  def change
    create_table :languals do |t|
      t.string :NDB_No
      t.string :Factor_Code

      t.timestamps
    end
  end
end
