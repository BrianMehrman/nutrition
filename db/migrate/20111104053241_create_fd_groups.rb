class CreateFdGroups < ActiveRecord::Migration
  def change
    create_table :fd_groups, :primary_key => :FdGrp_Cd do |t|
      t.string :FdGrp_Cd
      t.string :FdGrp_Desc

      t.timestamps
    end
  end
end
