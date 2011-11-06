namespace :process_usda_data do 
  
  desc "Process Data Files"
  task :process_data => :environment do
    load 'lib/tasks/parse_usda.rb'
    parse
    
    puts "USDA Data Processed"
  end
  
  # 1
  desc "Loading Food Description"
  task :load_food_description => :environment do
    require 'csv'
    
    # delete existing data
    FoodDes.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24','FOOD_DES.csv')
    logcount = 0
    
    CSV.foreach(upload, :headers => false) do |row|
      
      FoodDes.create(:NDB_No =>row[0],
                      :FdGrp_Cd =>row[1],
                      :Long_Desc =>row[2],
                      :Shrt_Desc =>row[3],
                      :ComName =>row[4],
                      :ManufacName =>row[5],
                      :Survey =>row[6],
                      :Ref_desc =>row[7],
                      :Refuse =>row[8],
                      :SciName =>row[9],
                      :N_Factor =>row[10],
                      :Pro_Factor =>row[11],
                      :Fat_Factor =>row[12],
                      :CHO_Factor =>row[13])
      logcount += 1  
    end
    puts "Successfully added #{logcount} food descriptions."
  end
  
  # 2
  desc "Loading Nutrient Data"
  task :load_nutrient_data => :environment do
    require 'csv'
    
    NutData.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'NUT_DATA.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      NutData.create(:NDB_No => row[0],
                      :Nutr_No => row[1],
                      :Nutr_Val => row[2],
                      :Num_Data_Pts => row[3],
                      :Std_Error => row[4],
                      :Src_Cd => row[5],
                      :Deriv_Cd => row[6],
                      :Ref_NDB_No => row[7],
                      :Add_Nutr_Mark => row[8],
                      :Num_Studies => row[9],
                      :Min => row[10],
                      :Max => row[11],
                      :DF => row[12],
                      :Low_EB => row[13],
                      :Up_EB => row[14],
                      :Stat_cmt => row[15],
                      :AddMod_Date => row[16],
                      :CC => row[17])
      logcount += 1
    end
    puts "Successfully added #{logcount} nutrient data."               
  end
  
  # 3
  desc "loading Weight"
  task :load_weight => :environment do
    require 'csv'
    
    Weight.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'WEIGHT.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      Weight.create(:NDB_No => row[0],
                    :Seq => row[1],
                    :Amount => row[2],
                    :Msre_Desc => row[3],
                    :Gm_Wgt => row[4],
                    :Num_Data_Pts => row[5],
                    :Std_Dev => row[6])
      logcount += 1
    end
    puts "Successfully added #{logcount} weight data."
  end
  
  # 4
  desc "Loading Footnote"
  task :load_footnote => :environment do 
    require 'csv'

    Footnote.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'FOOTNOTE.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      Footnote.create(:NDB_No => row[0],
                       :Footnt_No => row[1],
                       :Footnt_Typ => row[2],
                       :Nutr_No => row[3],
                       :Footnt_Txt => row[4])
      logcount += 1
    end
    puts "Successfully added #{logcount} footnote data."
  end
  
  # 5
  desc "Loading Food Group Description"
  task :load_food_group_description => :environment do 
    require 'csv'
    
    FdGroup.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'FD_GROUP.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      FdGroup.create(:FdGrp_Cd => row[0],
                     :FdGrp_Desc => row[1])
      logcount += 1
    end
    puts "Successfully added #{logcount} food group descriptions."
  end

  # 6
  desc "Loading LanguaL Factor"
  task :load_langual_factor => :environment do
    require 'csv'
    
    Langual.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'LANGUAL.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      Langual.create(:NDB_No => row[0],
                     :Factor_Code => row[1])
      logcount += 1
    end
    puts "Successfully added #{logcount} Langual Factors."
  end
  
  # 7
  desc "Loading LanguaL Factors Description"
  task :load_langual_factors_description => :environment do
    require 'csv'
    
    Langdesc.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib','data','sr24','LANGDESC.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      Langdesc.create(:Factor_Code => row[0],
                      :Description => row[1])
      logcount += 1
    end
    puts "Successfully added #{logcount} Langual Factors Description."
  end
  
  # 8 
  desc "Loading Nutrient Definition"
  task :load_nutrient_definition => :environment do
    require 'csv'
    
    NutrDef.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'NUTR_DEF.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      NutrDef.create(:Nutr_No => row[0],
                      :Units => row[1],
                      :Tagname => row[2],
                      :NutrDesc => row[3],
                      :Num_Dec => row[4],
                      :SR_Order =>row[5])
      logcount += 1
    end
    puts "Successfully added #{logcount} Nutrient Definitions."
  end
  
  # 9 
  desc "Loading Source Code"
  task :load_source_code => :environment do
    require 'csv'
    
    SrcCd.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'SRC_CD.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      SrcCd.create(:Src_Cd => row[0],
                   :SrcCd_Desc => row[1])
      logcount += 1
    end
    puts "Successfully added #{logcount} Source Codes."
  end
  
  # 10
  desc "Loading Data Derivation Description"
  task :load_data_derivation_description => :environment do
    require 'csv'
    
    DerivCd.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'DERIV_CD.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      DerivCd.create(:Deriv_Cd => row[0],
                     :Deriv_Desc => row[1])
      logcount += 1
    end
    puts "Successfully added #{logcount} Derivation Descriptions."
  end
  
  # 11
  desc "Loading Sources of Data"
  task :load_sources_of_data => :environment do
    require 'csv'
    
    DataSrc.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'DATA_SRC.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      DataSrc.create( :DataSrc_ID => row[0],
                      :Authors => row[1],
                      :Title => row[2],
                      :Year => row[3],
                      :Journal => row[4],
                      :Vol_City => row[5],
                      :Issue_State => row[6],
                      :Start_Page => row[7],
                      :End_Page => row[8])
      logcount += 1
    end
    puts "Successfully added #{logcount} Sources of Data."
  end
  
  # 12
  desc "Loading Sources of Data Link"
  task :load_sources_of_data_link => :environment do
    require 'csv'
    
    Datasrcln.destroy_all
    
    upload = File.join(Rails.root.to_s, 'lib', 'data', 'sr24', 'DATSRCLN.csv')
    logcount = 0
    CSV.foreach(upload, :headers => false) do |row|
      Datasrcln.create( :NDB_No => row[0],
                        :Nutr_No => row[1],
                        :DataSrc_ID => row[2])
      logcount += 1
    end
    puts "Successfully added #{logcount} Sources of Data Links."
  end
  
  # Run it all
  task :start => [:process_data,
                            :load_food_description,
                            :load_nutrient_data,
                            :load_weight,
                            :load_footnote,
                            :load_food_group_description,
                            :load_langual_factor,
                            :load_langual_factors_description,
                            :load_nutrient_definition,
                            :load_source_code,
                            :load_data_derivation_description,
                            :load_sources_of_data,
                            :load_sources_of_data_link] do
    puts "USDA Data added to Database."
  end
end