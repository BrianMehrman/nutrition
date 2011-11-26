class MealsController < ApplicationController
  before_filter :require_user
  #before_filter :require_food
  
  #def require_food
    #if params[:food]
    #  @food = Food.where(params[:food])
    #end
  #end
  
  # GET /meals
  # GET /meals.json
  def index
    # get meals from the user
    @meals = @user.meals
    # create a new meal for the ajax form to use
    @meal = Meal.new
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meals }
    end
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @meal = Meal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/new
  # GET /meals/new.json
  def new
    @meal = Meal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/1/edit
  def edit
    @meal = Meal.find(params[:id])
  end

  # POST /meals
  # POST /meals.json
  def create
    # This...
    @meal = @meal.consumptions.build(params[:food])
    # ...does the same as this
    # @meal = Meal.new(params[:meal])
    # @meal.food = @food
    
    respond_to do |format|
      if @meal.save
        format.js 
        format.html { redirect_to user_path(@user), notice: 'Meal was successfully created.' }
        format.json { render json: @meal, status: :created, location: @meal }
      else
        format.html { render action: "new" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meals/1
  # PUT /meals/1.json
  def update
    @meal = Meal.find(params[:id])

    respond_to do |format|
      if @meal.update_attributes(params[:meal])
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to list_path(@list) }
      format.json { head :ok }
    end
  end


end
