 
  # file enum
  FILES_ENUM = {
     "Food Description" => "FOOD_DES",
     "Nutrient Data" => "NUT_DATA",
     "Weight" => "WEIGHT",
     "Footnote" => "FOOTNOTE",
     "Food Group Description" => "FD_GROUP",
     "LanguaL Factor" => "LANGUAL",
     "LanguaL Factors Description" => "LANGDESC",
     "Nutrient Definition" => "NUTR_DEF",
     "Source Code" => "SRC_CD",
     "Data Derivation Description" => "DERIV_CD",
     "Sources of Data" => "DATA_SRC",
     "Sources of Data Link" => "DATSRCLN"
  }

  FIELD_SEP = '^'

  FIELD_ENC = '~'

  NULL_FIELDS = ['^^','~~',"\r\n",'']

  DATA_PATH = 'lib/data/sr24/'

  def parse_line(line)
    # line.force_encoding("US-ASCII")
    # line.byte_size = 8
    line.chomp!("\r\n")
    fields = line.split('^')
    p_fields = []
    fields.each do |field|
      # strip the '~' if present
      if field.index('"')
        field.gsub!(/[\"]/,"'")
      end
      if field.index(',')
        field.gsub!(/[\,]/,"\,")
      end
      if field.index(FIELD_ENC) and field.size > 2
        p_fields.push field.chop!.reverse!.chop!.reverse!
      else
        # else if the field matches a null field
        if NULL_FIELDS.index(field)
          p_fields.push ''
        elsif field.index('.')
          # else the field must be a number
          p_fields.push field.to_f
        elsif field.index('/')
          # check to see if its a date, add as a string for now
          p_fields.push field
        else
          p_fields.push field.to_i  
        end
      end
    end
    p_fields
  end

  def parse_to_csv(file_path) 
    # Deliminators
    file = open(file_path, 'r:windows-1251')
    puts file_path
    rows = []
    # parse all lines
    file.each do |line|
      rows.push parse_line(line)
    end
  
    # formate csv data by joining each field with a comma and each row with a line break
    csv_data = rows.collect { |row| row.join('^') }.join("\n")
  
    # save file to a new csv file
    txt_ext_pop= /^(.+)\.txt/
    csv_file_path = txt_ext_pop.match(file_path)[1] + '.csv' #file_path[file_path.length-4..file_path.length-1] + 'csv'
    puts csv_file_path
    csv_file = File.new(csv_file_path, 'w')
    csv_file.write(csv_data)
    csv_file.close
  
    #return path
    csv_file_path
  end


  def parse
    paths = {}
    FILES_ENUM.each do |n,f|
      f_path = DATA_PATH + f + ".txt"
      paths[f] = parse_to_csv(f_path)
    end
    paths
  end
