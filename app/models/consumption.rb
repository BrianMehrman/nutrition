class Consumption < ActiveRecord::Base

  belongs_to :food, :class_name => "FoodDes", :foreign_key => "id", :primary_key => "id"
  belongs_to :meal

end

