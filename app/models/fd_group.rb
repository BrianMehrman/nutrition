class FdGroup < ActiveRecord::Base
  
  # set_primary_key :FdGrp_CD
  has_many :foods, :class_name => "FoodDes", :foreign_key => "FdGrp_Cd", :primary_key => "FdGrp_Cd"
end
