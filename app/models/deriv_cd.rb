class DerivCd < ActiveRecord::Base
  
  belongs_to :nutrition_facts, :class_name => "NutData", :foreign_key => "Deriv_Cd", :primary_key => "Deriv_Cd"
  
end
