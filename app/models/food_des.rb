class FoodDes < ActiveRecord::Base
 
  alias_attribute :description, :Long_Desc
  alias_attribute :common_name, :ComName
  alias_attribute :manufacturer, :ManufacName

  has_many :nutrition_facts, :class_name => "NutData", :foreign_key => "NDB_No", :primary_key => "NDB_No"
  belongs_to :weight, :class_name => "Weight", :foreign_key => "NDB_No", :primary_key => "NDB_No"

  belongs_to :food_group, :class_name => "FdGroup", :foreign_key => "FdGrp_Cd", :primary_key => "FdGrp_CD"

  def simple_name
    # TODO fix this hacky shit
    self.description.split(',')[0]
  end
end
