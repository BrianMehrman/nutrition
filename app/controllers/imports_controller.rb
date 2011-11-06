class ImportsController < ApplicationController
  # before_filter :login_required #protect controller from anonymous users
  
  def new 
    @import = Import.new
  end
  
  def create
    @import = Import.new(params[:import])
    
    respond_to do |format|
      if @import.save!
        flash[:notice] = "CSV data was successfully imported."
        format.html { redirect_to(@import) }
      else
        flash[:error] = "CSV data import failed."
        format.html { render :action => "new" }
      end
    end
  end
  
  def show 
    @import = Import.find(params[:id])
  end
  
  def proc_csv
    @import = Import.find(params[:id])
    
    lines = parse_csv_file(@import.csv.path)
    lines.shift #comment this line out if your CSV file doesn't contain a header row
    
    if lines.size > 0
      @import.processed = lines.size
      lines.each do |line|
        case @import.datatype
        when "releases"
          new_release(line)
        end
      end
      @import.save
      flash[:notice] = "CSV data processing wat successful."
      redirect_to :action => "show", :id => @import.id
    else
      flash[:error] = "CSV data processing failed."
      render :action => "show", :id => @import.id
    end
  end
  
private
  def parse_csv_file(path_to_csv)
    lines = []
    
    # if not installed run, sudo gem install fastercsv
    # http://fastercsv.rubyforge.org/
    require 'CSV'
    
    FasterCSV.foreach(path_to_csv) do |row|
      lines << row
    end
    lines
  end
  
  def new_release(line)
    params = Hash.new
    params[:release] = Hash.new
    params[:release]["title"] = line[0]
    params[:release]["rdate"] = line[1]
    params[:release]["body"]  = line[3]
    params[:release]["notes"] = line[4]
    release = Release.new(params[:release])
    release.save
  end
end
