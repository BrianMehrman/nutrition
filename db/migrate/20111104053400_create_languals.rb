class CreateLanguals < ActiveRecord::Migration
  def change
    create_table :languals, :primary_key => :NDB_No do |t|
      t.string :NDB_No
      t.string :Factor_Code

      t.timestamps
    end
  end
end
