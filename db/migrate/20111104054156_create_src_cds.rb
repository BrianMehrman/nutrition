class CreateSrcCds < ActiveRecord::Migration
  def change
    create_table :src_cds do |t|
      t.string :Src_Cd
      t.string :SrcCd_Desc

      t.timestamps
    end
  end
end
