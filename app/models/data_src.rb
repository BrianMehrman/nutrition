class DataSrc < ActiveRecord::Base
  
  belongs_to :data_source_link, :class_name => "Datsrcln", :foreign_key => "DataSrc_ID", :primary_key => "DataSrc_ID"
  
end
