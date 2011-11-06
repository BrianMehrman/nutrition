# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111104055013) do

  create_table "data_srcs", :primary_key => "DataSrc_ID", :force => true do |t|
    t.string   "Authors"
    t.string   "Title"
    t.string   "Year"
    t.string   "Journal"
    t.string   "Vol_City"
    t.string   "Issue_State"
    t.string   "Start_Page"
    t.string   "End_Page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datasrclns", :primary_key => "NDB_No", :force => true do |t|
    t.string   "Nutr_No"
    t.string   "DataSrc_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deriv_cds", :primary_key => "Deriv_Cd", :force => true do |t|
    t.string   "Deriv_Desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_groups", :primary_key => "FdGrp_Cd", :force => true do |t|
    t.string   "FdGrp_Desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_des", :primary_key => "NDB_No", :force => true do |t|
    t.string   "FdGrp_Cd"
    t.string   "Long_Desc"
    t.string   "Shrt_Desc"
    t.string   "ComName"
    t.string   "ManufacName"
    t.string   "Survey"
    t.string   "Ref_desc"
    t.integer  "Refuse"
    t.string   "SciName"
    t.float    "N_Factor"
    t.float    "Pro_Factor"
    t.float    "Fat_Factor"
    t.float    "CHO_Factor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "footnotes", :primary_key => "NDB_No", :force => true do |t|
    t.string   "Footnt_No"
    t.string   "Footnt_Typ"
    t.string   "Nutr_No"
    t.string   "Footnt_Txt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imports", :force => true do |t|
    t.string   "datatype"
    t.integer  "processed",        :default => 0
    t.string   "csv_file_name"
    t.string   "csv_content_type"
    t.integer  "csv_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "langdescs", :primary_key => "Factor_Code", :force => true do |t|
    t.string   "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languals", :primary_key => "NDB_No", :force => true do |t|
    t.string   "Factor_Code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nut_data", :primary_key => "NDB_No", :force => true do |t|
    t.string   "Nutr_No"
    t.float    "Nutr_Val"
    t.float    "Num_Data_Pts"
    t.float    "Std_Error"
    t.string   "Src_Cd"
    t.string   "Deriv_Cd"
    t.string   "Ref_NDB_No"
    t.string   "Add_Nutr_Mark"
    t.integer  "Num_Studies"
    t.float    "Min"
    t.float    "Max"
    t.integer  "DF"
    t.float    "Low_EB"
    t.float    "Up_EB"
    t.string   "Stat_cmt"
    t.string   "AddMod_Date"
    t.string   "CC"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nutr_defs", :primary_key => "Nutr_No", :force => true do |t|
    t.string   "Units"
    t.string   "Tagname"
    t.string   "NutrDesc"
    t.string   "Num_Dec"
    t.integer  "SR_Order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "src_cds", :primary_key => "Src_Cd", :force => true do |t|
    t.string   "SrcCd_Desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weights", :primary_key => "NDB_No", :force => true do |t|
    t.string   "Seq"
    t.float    "Amount"
    t.string   "Msre_Desc"
    t.float    "Gm_Wgt"
    t.integer  "Num_Data_Pts"
    t.float    "Std_Dev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
