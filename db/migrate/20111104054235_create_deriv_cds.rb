class CreateDerivCds < ActiveRecord::Migration
  def change
    create_table :deriv_cds do |t|
      t.string :Deriv_Cd
      t.string :Deriv_Desc

      t.timestamps
    end
  end
end
