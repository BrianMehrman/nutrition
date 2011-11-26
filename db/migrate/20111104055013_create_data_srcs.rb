class CreateDataSrcs < ActiveRecord::Migration
  def change
    create_table :data_srcs do |t|
      t.string :DataSrc_ID
      t.string :Authors
      t.string :Title
      t.string :Year
      t.string :Journal
      t.string :Vol_City
      t.string :Issue_State
      t.string :Start_Page
      t.string :End_Page

      t.timestamps
    end
  end
end
