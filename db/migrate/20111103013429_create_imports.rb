class CreateImports < ActiveRecord::Migration
  def up
    create_table :imports do |t|
      t.string :datatype
      t.integer :processed, :default => 0
      t.string :csv_file_name
      t.string :csv_content_type
      t.integer :csv_file_size
      t.timestamps
    end
  end
  
  def down
    drop_table :imports
  end
end
