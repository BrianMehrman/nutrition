class CreateLangdescs < ActiveRecord::Migration
  def change
    create_table :langdescs, :primary_key => :Factor_Code do |t|
      t.string :Factor_Code
      t.string :Description

      t.timestamps
    end
  end
end
