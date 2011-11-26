class Datasrcln < ActiveRecord::Base
  belongs_to :nutrient_data, :class_name => "NutData", :foreign_key => "NDB_No",  :primary_key => "NDB_No"
  belongs_to :data_source, :class_name  => "DataSrc", :foreign_key  => "DataSrc_ID", :primary_key => "DatasSrc_ID" 
end
