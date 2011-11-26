class Weight < ActiveRecord::Base
  
  # set_primary_key :NDB_No

  alias_attribute :amount, :Amount
  alias_attribute :grams, :Gm_Wgt
  alias_attribute :measurement, :Msre_Desc
	
	has_many :foods, :class_name => "FoodDes", :foreign_key => "NDB_No", :primary_key => "NDB_No"
	

end
