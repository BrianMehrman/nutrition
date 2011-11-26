class NutrDef < ActiveRecord::Base
  # set_primary_key :Nutr_No

  alias_attribute :units, :Units
  alias_attribute :name, :NutrDesc
  alias_attribute :tag_name, :Tagname
end
